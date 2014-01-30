package controllers

import model.Company
import model.EntitySpecEnv

class CompaniesControllerSpec extends CrudRestControllerSpec[Company] with EntitySpecEnv.CompanyEnv {

  def controller = new CompaniesController()
  
  override val path = "/companies"

}