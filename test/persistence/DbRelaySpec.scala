package persistence

import org.specs2.mutable._
import org.specs2.time.NoTimeConversions
import helpers.WithActorSystem
import akka.actor.Props
import akka.testkit.TestProbe
import helpers.WithMemDb
import akka.testkit.TestActorRef
import akka.actor.PoisonPill
import akka.actor.DeadLetter

class DbRelaySpec extends Specification with NoTimeConversions {

  "DbRelay" should {
    "relay incoming messages to worker" in new WithActorSystem {
      new WithMemDb {
        val probe = TestProbe()
        val relay = system.actorOf(Props(new DbRelay("test")(testProbeProvider(probe))), "db")
        relay ! "shouldRelay"
        probe.expectMsgType[String] must be_==("shouldRelay")
      }
    }

    "should not start created with nonexistent datasource" in new WithActorSystem {
      new WithMemDb {
        val relay = system.actorOf(Props(new DbRelay("unknown")))
        val probe = TestProbe()
        system.eventStream.subscribe(probe.ref, classOf[DeadLetter])
        relay ! "should be in dead letters"
        probe.expectMsgType[DeadLetter]
      }
    }

    "correctly infer number of workers from Play configuration" in new WithActorSystem {
      new WithMemDb(additionalConfig = Map(
        "db.test.partitionCount" -> "13",
        "db.test.maxConnectionsPerPartition" -> "7")) {

        val relay = TestActorRef(new DbRelay("test")).underlyingActor
        relay.workerCount must be_==(91)
      }
    }

    "fall back to Play default numbers if connection pool configuration is not provided" in new WithActorSystem {
      new WithMemDb {
        val relay = TestActorRef(new DbRelay("test")).underlyingActor
        relay.workerCount must be_==(150) // Play has 5 partitions and 30 connections per partition by default
      }
    }
  }

}