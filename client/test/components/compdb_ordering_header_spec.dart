part of compdb.test;

class CompdbOrderingHeaderSpec extends ComponentSpec {
  String col;

  Ordering ord;

  CompdbOrderingHeaderSpec() : super("ordering_header");

  void initScope() {
    col = "testCol";
    ord = new Ordering.asc(col);
    scope["column"] = col;
    scope["ordering"] = ord;
  }

  String content() {
    return '<compdb-ordering-header ordering="ordering" column="column"></compdb-ordering-header>';
  }

  void _doTest() {
    test("click should toggle order directions", () {
      schedule(() {
        expect(ord.isAsc, true);
        _root.click();
        expect(ord.isDesc, true);
        _root.click();
        expect(ord.isAsc, true);
      });
    });

    test("click should set ordering this header column, asc order", () {
      schedule(() {
        ord.column = "other";
        ord.isAsc = false;
        _root.click();
        expect(ord.column, "testCol");
        expect(ord.isAsc, true);
      });
    });

    test("should have no arrow classes if not ordering column", () {
      _apply(() {
        ord.column = "other";
      });
      schedule(() {
        expect(_root.classes, isNot(contains("sorting-asc")));
        expect(_root.classes, isNot(contains("sorting-desc"))) ;
      }) ;
    });

    test("should have asc arrow class if ordering is asc", () {
      schedule(() {
        expect(ord.isAsc, true);
        expect(_root.classes, contains("sorting-asc"));
        expect(_root.classes, isNot(contains("sorting-desc"))) ;
      });
    });

    test("should have desc arrow class if ordering is desc", () {
      _apply(() {
        ord.isDesc = true;
      });
      schedule(() {
        expect(_root.classes, isNot(contains("sorting-asc")));
        expect(_root.classes, contains("sorting-desc")) ;
      }) ;
    });
  }

  html.Element get _root => _query("div");

}