package controllers

import model.EntitySpecEnv
import model.Computer

class ComputersControllerSpec extends CrudRestControllerSpec[Computer] with EntitySpecEnv.ComputerEnv {

  def controller = new ComputersController()

}