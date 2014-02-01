part of compdb.service;

typedef Future IndexDbQuery(ObjectStore store);

class IndexDbDriver {
  static final Logger log = new Logger('IndexDbDriver');

  final DbConfig config;

  bool _ready = false;
  Future<Database> _futureDb;
  Database _db;

  IndexDbDriver(this.config) {
    _init(window.indexedDB);
  }

  Future<Map> find(String storeName, int id) {
    return _execute(storeName, (store) {
      return
        store.getObject(id)
        .then((object) => _addId(id, object));
    }, readonly: true);
  }

  Future<List<Map>> all(String storeName) {
    return _execute(storeName, (store) {
      return
        store.openCursor(autoAdvance: true)
        .map((cursor) => _addId(cursor.key, cursor.value))
        .toList();
    }, readonly: true);
  }

  Future<int> add(String storeName, Map value) {
    return _execute(storeName, (store) {
      return store.add(_stripId(value));
    });
  }

  Future update(String storeName, int id, Map value) {
    return _execute(storeName, (store) {
      return store.put(_stripId(value), id);
    });
  }

  Future remove(String storeName, int id) {
    return _execute(storeName, (store) {
      return store.delete(id);
    });
  }

  Future reset() {
    return
      _drop(window.indexedDB)
      .then((_) => _init(window.indexedDB))
      .then((_) => _fill());
  }

  _addId(var id, Map item) {
    return
      item
        ..["id"] = id;
  }

  _stripId(Map item) {
    return item.remove("id");
  }

  Future _init(IdbFactory dbFactory) {
    log.info("Opening database [${config.db}]...");
    _futureDb = dbFactory.open(config.db,
                               version: 1,
                               onUpgradeNeeded: _createStorages)
    .then((Database db) {
      this._db = db;
      _ready = true;
      log.info("Database [${config.db} opened]");
      return db;
    });
    return _futureDb;
  }

  Future _drop(IdbFactory dbFactory) {
    log.info("Removing database [${config.db}]...");
    return dbFactory.deleteDatabase(
        config.db,
        onBlocked: (_) {
          log.warning("Database is blocked! Closing...");
          if (_db != null) {
            _db.close();
          }
        })
    .then((_) {
      log.info("Removed database [${config.db}]");
      return true;
    });
  }

  void _createStorages(VersionChangeEvent e) {
    log.info("Initializing storages...");
    Database db = (e.target as Request).result;
    config.storages.keys.forEach((key) {
      log.info("Creating storage [$key]");
      db.createObjectStore(key, autoIncrement: true);
    });
    log.info("All storages created");
  }

  Future _fill() {
    log.info("Filling storages with initial data...");
    return Future.wait(config.storages.keys.map((key) {
      var transaction = _db.transaction(key, 'readwrite');
      var store = transaction.objectStore(key);
      log.info("Filling storage [$key] with initial data...");
      config.storages[key].forEach((item) {
        store.add(item);
      });
      return transaction.completed.then((_) {
        log.info("Storage [$key] resetted");
        return;
      });
    })).then((_) {
      log.info("All storages resetted");
      return true;
    });
  }

  Future _execute(String storeName, IndexDbQuery query, {bool readonly : false}) {
    var withDb = (Database db) {
      var transaction = db.transaction(storeName, readonly ? 'readonly' : 'readwrite');
      var store = transaction.objectStore(storeName);
      var result = query(store);
      return transaction.completed.then((_) => result);
    };
    /*
    If database is opened and ready, just execute query,
    else register query to be executed when database will be available
     */
    if (_ready) {
      return withDb(_db);
    } else {
      return _futureDb.then(withDb);
    }
  }

}