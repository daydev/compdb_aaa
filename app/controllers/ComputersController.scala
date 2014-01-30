package controllers

import model.Computer
import model.Computers
import play.api.libs.json._
import play.api.libs.functional.syntax._
import java.util.Date

class ComputersController extends CrudRestController[Computer] {
  lazy val dao = Computers

  val jsonFormat: Format[Computer] = Json.format[Computer]

}

object ComputersController extends ComputersController