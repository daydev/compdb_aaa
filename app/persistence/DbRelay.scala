package persistence

import akka.actor.Actor
import akka.actor.Props
import scala.slick.session.Database
import play.api.db.DB
import play.api.Application
import util.ActorProvider
import akka.routing.FromConfig
import akka.routing.RoundRobinRouter

class DbRelay(dbName: String = "default", app: Application = play.api.Play.current)
             (implicit actorProvider: ActorProvider)
  extends Actor {

  require(app.configuration.getConfig("db").map(_.getConfig(dbName)).isDefined)

  def db(dbName: String): Database = Database.forDataSource(DB.getDataSource(dbName)(app))

  val workerCount = {
    val conf = app.configuration.getConfig("db").flatMap(_.getConfig(dbName)).get
    val partitions = conf.getInt("partitionCount").getOrElse(5)
    val connectionsPerPartition = conf.getInt("maxConnectionsPerPartition").getOrElse(30)
    partitions * connectionsPerPartition
  }

  val worker = actorProvider(this.context)(Props(new DBWorker(db(dbName)))
    .withRouter(RoundRobinRouter(nrOfInstances = workerCount)))

  def receive = {
    case query => worker forward query
  }

}