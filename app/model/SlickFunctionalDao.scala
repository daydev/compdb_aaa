package model

import play.api.db.slick.Config.driver.simple._
import persistence.SlickDbQuery

trait SlickFunctionalDao[E <: Entity] extends FunctionalDao[Session, E] {
  self: Table[E] =>

  def id = column[Long]("id", O.PrimaryKey, O.AutoInc)

  def autoInc = * returning id

  def find(id: Long): SlickDbQuery[Option[E]] = {
    implicit session => Query(this).where(_.id === id).firstOption
  }

  def list: SlickDbQuery[Seq[E]] = {
    implicit session => Query(this).list
  }

  def count: SlickDbQuery[Int] = {
    implicit session => Query(this.length).first
  }

  def exists(id: Long): SlickDbQuery[Boolean] = {
    implicit session => find(id)(session).isDefined
  }

  def create(entity: E): SlickDbQuery[Long] = {
    implicit session => autoInc.insert(entity)
  }

  def create(entities: Seq[E]): SlickDbQuery[Seq[Long]] = {
    implicit session => autoInc.insertAll(entities: _*)
  }

  def update(id: Long, entity: E): SlickDbQuery[Unit] = {
    implicit session => Query(this).where(_.id === id).update(entity)
  }

  def delete(id: Long): SlickDbQuery[Unit] = {
    implicit session => Query(this).where(_.id === id).delete
  }
}