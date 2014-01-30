package util

import akka.actor.ActorRef
import akka.actor.Props
import akka.actor.Actor
import akka.actor.ActorRefFactory

class ActorProvider
  extends ((ActorRefFactory) => (Props => ActorRef)) {

  def apply(factory: ActorRefFactory): Props => ActorRef = props => factory.actorOf(props)

}

object ActorProvider {

  implicit val defaultProvider = new ActorProvider

}