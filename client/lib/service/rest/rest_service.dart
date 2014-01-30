part of compdb.service;

abstract class RestService<T> extends CrudService<T> {
  final Http http;

  final String endpoint;

  RestService(Morph morph, this.http, this.endpoint) : super(morph);

  Future<List<T>> list() {
    return http.get("/$endpoint")
    .then((_) => _.data as List)
    .then((_) => _.map((json) => morph.deserialize(T, json)));
  }

  Future<T> find(int id) {
    return http.get("/$endpoint/$id")
    .then((_) => _.data)
    .then((json) => morph.deserialize(T, json));
  }

  Future<int> create(T obj) {
    return http.post(
        "/$endpoint",
        morph.serialize(obj, JSON.encoder))
    .then((_) => _idFromCreated(_));
  }

  Future update(int id, T obj) {
    return http.put(
        "/$endpoint/$id",
        morph.serialize(obj, JSON.encoder));
  }

  Future remove(int id) {
    return http.delete("/$endpoint/$id");
  }

  /**
   * Assuming standard REST conventions,
   * response to POST request to given endpoint, should be 201 Created
   * with Location header containing url of new resource.
   * Again, assuming standard REST conventions, this url is endpoint url + entity id.
   * Alternatively, new id can be returned in the body of the response
   */

  int _idFromCreated(HttpResponse resp) {
    String location = resp.headers("location");
    if (location != null) {
      return int.parse(location.replaceAll("/$endpoint/", ""));
    } else {
      return int.parse(resp.data);
    }
  }

}