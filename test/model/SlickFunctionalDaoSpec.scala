package model

import org.specs2.mutable._
import scala.slick.session.Database
import play.api.db.DB
import play.api.Play.current
import helpers.WithMemDb
import helpers.WithMemDb._
import persistence.DbQuery

trait SlickEntitySpec[E <: Entity] extends Specification {
  self: EntitySpecEnv[E] =>

  entityName should {

    "retrieve entry by id" in new WithMemDb {
      exec(dao.find(exampleId)) must beSome(example)
    }

    "return None if no entry for given id exists" in new WithMemDb {
      exec(dao.find(nonexistentId)) must beNone
    }

    "list all entries" in new WithMemDb {
      exec(dao.list) must have size (entryCount)
    }

    "count all entries" in new WithMemDb {
      exec(dao.count) must be_==(entryCount)
    }

    "check for existence of entry" in new WithMemDb {
      exec(dao.exists(exampleId)) must beTrue
      exec(dao.exists(nonexistentId)) must beFalse
    }

    "create new entry with auto-generated id" in new WithMemDb {
      val existingIds = exec(dao.list).map(_.id)
      val newId = exec(dao.create(newEntry))
      existingIds must not contain (Some(newId))
      exec(dao.find(newId)) must beSome
      exec(dao.find(newId)) must beSome.which(_.id === Some(newId))
    }

    "update entry" in new WithMemDb {
      exec(dao.update(exampleId, updated))
      exec(dao.find(exampleId)) must beSome(updated)
    }

    "delete entry by id" in new WithMemDb {
      exec(dao.delete(exampleId))
      exec(dao.count) must be_==(entryCount - 1)
      exec(dao.find(exampleId)) must beNone
    }
  }

}