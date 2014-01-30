package model

import java.util.Date
import play.api.db.slick.Config.driver.simple._
import scala.slick.lifted.ForeignKeyAction

case class Computer(id: Option[Long],
                    name: String,
                    introduced: Option[Date],
                    discontinued: Option[Date],
                    companyId: Option[Long])

object Computers
  extends Table[Computer]("COMPUTER")
  with SlickFunctionalDao[Computer] {

  implicit val javaDateTypeMapper = MappedTypeMapper.base[java.util.Date, java.sql.Date](
    x => new java.sql.Date(x.getTime),
    x => new java.util.Date(x.getTime))

  def name = column[String]("name", O.NotNull)

  def introduced = column[Date]("introduced", O.Nullable)

  def discontinued = column[Date]("discontinued", O.DBType("date"), O.Nullable)

  def companyId = column[Long]("company_id", O.DBType("date"), O.Nullable)

  def companyFk = foreignKey("computer_company_fk", id, Companies)(_.id,
    onDelete = ForeignKeyAction.Cascade,
    onUpdate = ForeignKeyAction.Cascade)

  def * = id.? ~ name ~ introduced.? ~ discontinued.? ~ companyId.? <>(Computer.apply _, Computer.unapply _)

}