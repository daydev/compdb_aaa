import akka.actor.Props
import java.util.TimeZone
import persistence.DbRelay
import play.api.Application
import play.api.GlobalSettings
import play.api.libs.concurrent.Akka

object Global extends GlobalSettings {

  override def onStart(app: Application) = {
    TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
    for (
      config <- app.configuration.getConfig("db");
      dbName <- config.subKeys
    ) {
      Akka.system(app).actorOf(Props(new DbRelay(dbName)), s"db-$dbName")
    }
  }

}