package model

import play.api.db.slick.Config.driver.simple._

case class Company(id: Option[Long], name: String)

object Companies
  extends Table[Company]("COMPANY")
  with SlickFunctionalDao[Company] {

  def name = column[String]("name", O.NotNull)

  def * = id.? ~ name <>(Company.apply: (Option[Long], String) => Company, Company.unapply _)

}