package controllers

import org.specs2.mutable._
import model.Entity
import model.EntitySpecEnv
import helpers.WithMemDb
import play.api.test._
import play.api.test.Helpers._
import play.api.mvc.SimpleResult
import scala.concurrent.Future
import play.api.libs.json.JsArray
import helpers.TestGlobal
import play.api.libs.json.JsString
import play.api.libs.json.JsObject
import play.api.libs.json.Format
import play.api.libs.json.Json
import play.api.libs.json.JsString

trait CrudRestControllerSpec[E <: Entity] extends Specification {
  self: EntitySpecEnv[E] =>
  val json = "application/json"

  def controller: CrudRestController[E]

  implicit val jsonFormat = controller.jsonFormat

  val path = s"/${entityName.toLowerCase}s"

  def basicChecks(resp: Future[SimpleResult], expectedStatus: Int = OK) = {
    status(resp) must equalTo(expectedStatus)
    contentType(resp) must beSome(json)
    charset(resp) must beSome("utf-8")
  }

  s"$entityName controller" should {
    "list entries" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.list.apply(FakeRequest(GET, path))
      basicChecks(resp)
      val asJson = contentAsJson(resp)
      asJson must haveClass[JsArray]
      asJson.asInstanceOf[JsArray].value.seq must have size (entryCount)
    }

    "return single entry" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.get(exampleId).apply(FakeRequest(GET, s"$path/$exampleId"))
      basicChecks(resp)
      val asJson = contentAsJson(resp)
      asJson must haveClass[JsObject]
      asJson.as must be_==(example)
    }

    "return 404 Not Found if nonexistent entry is requested" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.get(nonexistentId).apply(FakeRequest())
      status(resp) must equalTo(404)
    }

    "create entity" in new WithMemDb(global = Some(TestGlobal)) {
      val newId = entryCount + 1
      val resp = controller.add.apply(FakeRequest(POST, path).withBody(Json.toJson(newEntry)))
      status(resp) must equalTo(201)
      contentAsString(resp) must be empty;
      header(LOCATION, resp) must beSome(s"$path/$newId")
      exec(dao.find(newId)) must beSome
    }

    "return 400 Bad Request if invalid request body provided for new entity" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.add.apply(FakeRequest(POST, path).withBody(JsString("invalid")))
      status(resp) must equalTo(400)
    }

    "update entity" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.update(exampleId).apply(FakeRequest(PUT, s"$path/$exampleId").withBody(Json.toJson(updated)))
      status(resp) must equalTo(OK)
      contentAsString(resp) must be empty;
      exec(dao.find(exampleId)) must beSome(updated)
    }

    "return 400 Bad Request if invalid request body provided for updated entity" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.update(exampleId).apply(FakeRequest(PUT, s"$path/$exampleId").withBody(JsString("invalid")))
      status(resp) must equalTo(400)
    }

    "return 404 Not Found if update of unexisting entity is requested" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.update(nonexistentId).apply(FakeRequest(PUT, s"$path/$exampleId").withBody(Json.toJson(updated)))
      status(resp) must equalTo(404)
    }

    "delete entity" in new WithMemDb(global = Some(TestGlobal)) {
      val resp = controller.delete(exampleId).apply(FakeRequest(DELETE, s"$path/$exampleId"))
      status(resp) must equalTo(204)
      contentAsString(resp) must be empty;
      exec(dao.find(exampleId)) must beNone
    }
  }

}