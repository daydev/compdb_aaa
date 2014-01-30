package persistence

import org.specs2.mutable._
import akka.actor.Props
import org.specs2.mock.Mockito
import org.specs2.time.NoTimeConversions
import akka.actor.ActorSystem
import akka.testkit._
import scala.slick.session.Database
import helpers._
import model.Computers
import model.Computer

class DbWorkerSpec
    extends Specification
    with NoTimeConversions {

  "DbWorker" should {
    "pass received query to query executor" in new WithDbWorker {
      worker ! stubQuery
      around(there was one(queryExecutor).apply(stubQuery))
    }

    "send back result of executing received query" in new WithDbWorker {
      worker ! stubQuery
      expectMsgType[String] must be_==("test")
    }

    "integrate correctly with real db query executor" in new WithActorSystem("DbWorkerSpec") {
      new WithMemDb() {
        val realWorker = system.actorOf(Props(new DBWorker(db)))
        realWorker ! Computers.find(1)
        expectMsgType[Option[Computer]] must beSome
      }
    }

  }

}

class WithDbWorker extends WithActorSystem("DbWorkerSpec") with Mockito {
  val queryExecutor = mock[DbQueryExecutor[Any, Any]]
  queryExecutor.apply(any[DbQuery[Any, Any]]) returns "test"
  lazy val worker = system.actorOf(Props(new DBWorker(queryExecutor)))
  val stubQuery: DbQuery[Any, Any] = x => x

}