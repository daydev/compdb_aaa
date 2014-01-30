package model

import java.text.SimpleDateFormat
import java.util.Date

trait EntitySpecEnv[E <: Entity] {
  val datasourceName: String = "test"

  def entityName: String

  def dao: SlickFunctionalDao[E]

  val exampleId = 1L

  val nonexistentId = 1000000L

  val entryCount = 2

  def example: E

  def newEntry: E

  def updated: E
}

object EntitySpecEnv {
  trait CompanyEnv extends EntitySpecEnv[Company] {
    
    def entityName = "Company"

    lazy val dao = Companies

    val example = Company(1, "Apple Inc.")

    val newEntry = example.copy(id = None)

    val updated = example.copy(name = "Noname Inc.")
    
  }
  
  trait ComputerEnv extends EntitySpecEnv[Computer] {

    val dateFormat = new SimpleDateFormat("yyyy-MM-dd")

    def date(dateString: String): Option[Date] = Some(dateFormat.parse(dateString))

    def entityName = "Computer"

    lazy val dao = Computers

    override val entryCount = 5

    val example = Computer(Some(1), "Apple III", date("1980-05-01"), date("1984-04-01"), Some(1))

    val newEntry = example.copy(id = None)

    val updated = example.copy(
      name = "ENIAC",
      introduced = date("1947-07-29"),
      discontinued = date("1955-10-02"),
      companyId = Some(2)
    )
  }
}