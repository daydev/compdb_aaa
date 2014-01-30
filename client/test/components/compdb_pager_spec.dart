part of compdb.test;

class CompdbPagerSpec extends ComponentSpec {

  Paginator _p;

  CompdbPagerSpec(): super("pager");

  void initScope() {
    _p = new Paginator(100);
    scope["paginator"] = _p;
  }

  String content() => '<compdb-pager paginator="paginator"></compdb-pager>';

  void _doTest() {
    test("click on 'Next' should increment page", () {
      schedule(() {
        expect(_p.pageNum, 1);
        _next.click();
        expect(_p.pageNum, 2);
      });
    });

    test("click on 'Prev' should decrement page", () {
      schedule(() {
        _p.pageNum = 3;
        _prev.click();
        expect(_p.pageNum, 2);
      });
    });

    test("'Prev' should be disabled iff on the first page", () {
      _apply(() {
        expect(_prev.classes, contains("passive"));
        _p.pageNum = 3;
      });
      _apply(() {
        expect(_prev.classes, isNot(contains("passive")));
        _p.goFirst();
      });
      schedule(() {
        expect(_prev.classes, contains("passive"));
      });
    });

    test("'Next' should be disabled iff on the last page", () {
      _apply(() {
        expect(_next.classes, isNot(contains("passive")));
        _p.goLast();
      });
      _apply(() {
        expect(_next.classes, contains("passive"));
        _p.pageNum = 3;
      });
      schedule(() {
        expect(_next.classes, isNot(contains("passive")));
      });
    });

    test("should contain information about current page", () {
      _apply(() {
        expect(_info.text, contains("Page 1 (1—20 of 100)")) ;
        _p.pageNum = 3;
        _p.pageSize = 16;
      });
      _apply(() {
        expect(_info.text, contains("Page 3 (33—48 of 100)")) ;
        _p.goLast();
        _p.itemsTotal = 78;
      });
      schedule(() {
        expect(_info.text, contains("Page 5 (65—78 of 78)")) ;
      });
    });

    test("page size select should update pageSize", () {
      schedule(() {
        _sizeSelect.querySelector("option:nth-child(3)").selected = true;
        tb.triggerEvent(_sizeSelect, 'change');
        expect(_p.pageSize, 50);
      });
    });

    test("page size select should have 'All' option", () {
      _apply(() {
        _p.itemsTotal = 1001;
      });
      schedule(() {
        expect(_p.pageSize, 20);
        _sizeSelect.querySelector("option:last-child").selected = true;
        tb.triggerEvent(_sizeSelect, 'change');
        expect(_p.pageSize, 1001);
      });
    });

    test("pageSize should be updated when itemsTotal changes iff 'All' page size is selected", () {
      _apply(() {
        expect(_p.pageSize, 20);
        _sizeSelect.querySelector("option:last-child").selected = true;
        tb.triggerEvent(_sizeSelect, 'change');
        expect(_p.pageSize, 100);
        _p.itemsTotal = 99;
      });
      _apply(() {
        expect(_p.pageSize, 99);
        _sizeSelect.querySelector("option:nth-child(2)").selected = true;
        tb.triggerEvent(_sizeSelect, 'change');
        expect(_p.pageSize, 20);
        _p.itemsTotal = 101;
      });
      schedule(() {
        expect(_p.itemsTotal, 101);
        expect(_p.pageSize, 20);
      });

    });
  }

  html.Element get _prev => _query(".prev");

  html.Element get _next => _query(".next");

  html.Element get _info => _query(".info");

  html.Element get _sizeSelect => _query("select");
}
