package model

import persistence.DbQuery

trait FunctionalDao[S, E <: Entity] {

  def find(id: Long): DbQuery[S, Option[E]]

  def list: DbQuery[S, Seq[E]]

  def count: DbQuery[S, Int]

  def create(entity: E): DbQuery[S, Long]

  def create(entities: Seq[E]): DbQuery[S, Seq[Long]]

  def update(id: Long, entity: E): DbQuery[S, Unit]

  def delete(id: Long): DbQuery[S, Unit]

}