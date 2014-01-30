import scala.slick.session.Session
import scala.slick.session.Database

package object persistence {

  type DbQuery[S, T] = S => T

  type SlickDbQuery[T] = DbQuery[Session, T]

  type DbQueryExecutor[S, T] = DbQuery[S, T] => T

  implicit class SlickDbQueryExecutor[T](db: Database) extends DbQueryExecutor[Session, T] {
    def apply(query: DbQuery[Session, T]): T = db.withSession(query)
  }

}