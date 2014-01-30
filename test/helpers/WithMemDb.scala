package helpers

import play.api.test._
import play.api.test.Helpers._
import scala.slick.session.Database
import play.api.db.DB
import play.api.Application
import org.specs2.mutable._
import org.specs2.execute.AsResult
import org.specs2.execute.Result
import persistence.SlickDbQuery
import helpers.WithMemDb._
import org.specs2.specification.Scope
import play.api.GlobalSettings
import play.api.libs.concurrent.Akka
import persistence.DbRelay
import akka.actor.Props

class WithMemDb(
  datasourceName: String = "test",
  mode: Option[H2Mode] = None,
  global: Option[GlobalSettings] = Some(new GlobalSettings() {}),
  additionalConfig: Map[String, String] = Map.empty)
    extends WithApplication(
  FakeApplication(
      additionalConfiguration = inMemoryDatabase(
        name = datasourceName,
        options = mode.map(mode => Map("MODE" -> mode.name)).getOrElse(Map.empty)
      ) ++ additionalConfig,
      withGlobal = global
    )) {

  lazy val db = Database.forDataSource(DB.getDataSource(datasourceName))

  def exec[T](query: SlickDbQuery[T])(implicit app: Application): T = db.withSession(query)

}

object WithMemDb {

  abstract class H2Mode(val name: String)
  case object PostreSql extends H2Mode("PostgreSQL")
  case object MySql extends H2Mode("MYSQL")
  case object DB2 extends H2Mode("DB2")
  case object Derby extends H2Mode("DERBY")
  case object HSQLDB extends H2Mode("HSQLDB")
  case object MSSQL extends H2Mode("MSSQLServer")
  case object Oracle extends H2Mode("Oracle")

}

object TestGlobal extends GlobalSettings {
  override def onStart(app: Application) = {
    Akka.system(app).actorOf(Props(new DbRelay("test")), "db-default")
  }
}