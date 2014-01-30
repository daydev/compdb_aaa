package controllers

import model.Company
import model.Companies
import play.api.libs.json._
import play.api.libs.functional.syntax._

class CompaniesController extends CrudRestController[Company] {
  lazy val dao = Companies

  val jsonFormat: Format[Company] = Json.format[Company]
}

object CompaniesController extends CompaniesController