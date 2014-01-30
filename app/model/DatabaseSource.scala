package model

import play.api.db.DB
import scala.slick.session.Database

trait DatabaseSource {

  lazy val db: Database = Database.forDataSource(DB.getDataSource()(play.api.Play.current))

}