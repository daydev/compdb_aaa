part of compdb.service;

abstract class LocalStorageService<T> extends CrudService<T> {

  final IndexDbDriver driver;

  final String storage;

  LocalStorageService(Morph morph, this.driver, this.storage): super(morph);

  Future<List<T>> list() {
    return driver.all(storage)
    .then((items) => items.map((_) => morph.deserialize(T, _)));
  }

  Future<T> find(int id) {
    return driver.find(storage, id).then((_) => morph.deserialize(T, _));
  }

  Future<int> create(T obj) {
    return driver.add(storage, morph.serialize(obj));
  }

  Future update(int id, T obj) {
    return driver.update(storage, id, morph.serialize(obj));
  }

  Future remove(int id) {
    return driver.remove(storage, id);
  }
}