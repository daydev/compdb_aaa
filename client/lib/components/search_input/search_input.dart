part of compdb.components.search_input;

@NgComponent(
    selector: "compdb-search-input",
    templateUrl: "/packages/compdb/components/search_input/search_input.html",
    cssUrl: "/packages/compdb/components/search_input/search_input.css",
    publishAs: "m",
    applyAuthorStyles: true
    )
class CompdbSearchInput {

  @NgOneWayOneTime("threshold")
  int threshold = 3;

  @NgTwoWay("query")
  String query;

  String _innerQuery = "";

  String get innerQuery => _innerQuery;

  void set innerQuery(String _innerQuery) {
    this._innerQuery = _innerQuery;
    if (innerQuery != null && innerQuery.length > threshold) {
      query = innerQuery;
    } else {
      query = "";
    }
  }

  CompdbSearchInput();

  void overrideQuery() {
    query = innerQuery;
  }

}