package persistence

import akka.actor.Actor
import scala.slick.session.Database

class DBWorker[S](val executor: DbQueryExecutor[S, Any]) extends Actor {

  def receive = {
    case query: DbQuery[S, _] => sender ! executor(query)
  }

}

