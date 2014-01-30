part of compdb.service;

abstract class CrudService<T> {
  final Morph morph;

  CrudService(this.morph);

  Future<List<T>> list();

  Future<T> find(int id);

  Future<int> create(T obj);

  Future update(int id, T obj);

  Future remove(int id);

  Future<Map<int, T>> asMap() {
    return list().then((items) {
      Map<int, T> result = new Map();
      items.forEach((item) {
        result[item.id] = item;
      });
      return result;
    });
  }

}