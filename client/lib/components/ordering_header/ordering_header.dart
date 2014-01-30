part of compdb.components.ordering_header;

@NgComponent(
    selector: "compdb-ordering-header",
    templateUrl: "/packages/compdb/components/ordering_header/ordering_header.html",
    cssUrl: "/packages/compdb/components/ordering_header/ordering_header.css",
    publishAs: "m"
    )
class CompdbOrderingHeader {
  @NgTwoWay("ordering")
  Ordering ord;

  @NgOneWayOneTime("column")
  String column;

  bool get isCurrent => ord.column == column;

  bool get isAscArrow => isCurrent && ord.isAsc;

  bool get isDescArrow => isCurrent && ord.isDesc;

  void handleClick() {
    if (ord.column != column) {
      ord.column = column;
      ord.isAsc = true;
    } else {
      ord.toggle();
    }
  }
}