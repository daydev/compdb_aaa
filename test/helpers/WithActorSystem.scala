package helpers

import akka.testkit.TestKit
import akka.actor.ActorSystem
import org.specs2.mutable.After
import akka.testkit.ImplicitSender
import org.specs2.mutable.Around
import org.specs2.execute.Result
import org.specs2.execute.AsResult
import akka.testkit.TestProbe
import akka.actor.Actor
import akka.actor.Props
import akka.actor.ActorRef
import util.ActorProvider
import akka.actor.ActorRefFactory

class WithActorSystem(systemName: String = "test")
    extends TestKit(ActorSystem(systemName))
    with ImplicitSender
    with Around {

  def testProbeProvider(probe: TestProbe): ActorProvider = new ActorProvider {
    override def apply(parent: ActorRefFactory): Props => ActorRef = _ => probe.ref
  }

  def around[T: AsResult](act: => T): Result = AsResult.effectively(act)

  def after = system.shutdown()

}