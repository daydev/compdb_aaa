package controllers

import akka.actor.ActorSelection
import akka.pattern.ask
import akka.util.Timeout
import model.Entity
import model.SlickFunctionalDao
import play.api.Play.current
import play.api.http.ContentTypes
import play.api.libs.concurrent.Akka
import play.api.libs.json.Format
import play.api.libs.json.Json
import play.api.mvc._
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.Future
import scala.concurrent.duration._

trait CrudRestController[E <: Entity] extends
Controller {

  def dao: SlickFunctionalDao[E]

  implicit def jsonFormat: Format[E]

  val dbName = "default"

  lazy val database: ActorSelection = Akka.system.actorSelection(s"/user/db-$dbName")

  implicit val timeout = Timeout(5.seconds)

  def toOk[T: Format](response: T): SimpleResult = Ok(Json.toJson(response)).as(ContentTypes.JSON)

  def list = Action.async {
    for {
      entries <- (database ? dao.list).mapTo[Seq[E]]
    } yield {
      toOk(entries)
    }
  }

  def get(id: Long) = Action.async {
    for {
      entryOption <- (database ? dao.find(id)).mapTo[Option[E]]
    } yield {
      entryOption.map(toOk(_)).getOrElse(NotFound)
    }
  }

  def add = Action.async(parse.json) {
    implicit request =>
      request.body.validate[E](jsonFormat).fold(
        valid =
          entity =>
            (database ? dao.create(entity)).mapTo[Long].map {
              id =>
                Created.withHeaders("Location" -> s"${request.path}/$id")
            },
        invalid = errors => Future.successful(BadRequest)
      )
  }

  def update(id: Long) = Action.async(parse.json) {
    implicit request =>
      (database ? dao.exists(id)).mapTo[Boolean].flatMap {
        exists =>
          if (exists) {
            request.body.validate[E](jsonFormat).fold(
              valid =
                entity =>
                  (database ? dao.update(id, entity)).map(_ => Ok),
              invalid = errors => Future.successful(BadRequest)
            )
          } else {
            Future.successful(NotFound)
          }
      }
  }

  def delete(id: Long) = Action.async {
    (database ? dao.delete(id)).map(_ => NoContent)
  }

}