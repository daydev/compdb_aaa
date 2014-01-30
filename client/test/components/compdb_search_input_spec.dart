part of compdb.test;

class CompdbSearchInputSpec extends ComponentSpec {

  CompdbSearchInputSpec() : super("search_input");

  void initScope() {
    scope["query"] = "";
  }

  String content() => '<compdb-search-input query="query"></compdb-search-input>';

  _doTest() {

    test("should update query when input value changes", () {
      schedule(() {
        keys(_input(), "abcd") ;
        expect(scope["query"], "abcd");
      });
    });

    test("should not update query if input value is shorter than threshold", () {
      schedule(() {
        keys(_input(), "abc");
        expect(scope["query"], isEmpty);
      });
    });

    test("shold support custom query length threshold", () {
      html.Element el;
      _apply(() {
        el = tb.compile('<compdb-search-input query="query" threshold="4"></compdb-search-input>', scope: scope);
      });
      schedule(() {
        var input = _input(el);
        keys(input, "abcd");
        expect(scope["query"], isEmpty);
        keys(input, "abcde");
        expect(scope["query"], "abcde");
      });
    });

    test("should set query to empty string if input value becomes shorter than threshold", () {
      schedule(() {
        var input = _input();
        keys(input, "abcd");
        keys(input, "abc");
        expect(scope["query"], isEmpty);
      });
    });

    test("should work continuosly", () {
      schedule(() {
        var input = _input();
        keys(input, "abcd");
        expect(scope["query"], "abcd");
        keys(input, "abcde");
        expect(scope["query"], "abcde");
        keys(input, "abcdef");
        expect(scope["query"], "abcdef");
        keys(input, "abcde");
        expect(scope["query"], "abcde");
      });
    });

    test("button click should update query even if input value is shorter than threshold", () {
      schedule(() {
        keys(_input(), "abc");
        _button().click();
        expect(scope["query"], "abc");
      });
    });

    test("after button click it should continue to work normally", () {
      schedule(() {
        keys(_input(), "abc");
        _button().click();
        expect(scope["query"], "abc");
        keys(_input(), "ab");
        expect(scope["query"], isEmpty);
      });
    });

  }

  html.InputElement _input([html.Element el]) {
    if (el != null) {
      return el.shadowRoot.querySelector("input") as html.InputElement;
    } else {
      return element.shadowRoot.querySelector("input") as html.InputElement;
    }
  }

  html.ButtonElement _button([html.Element el]) {
    if (el != null) {
      return el.shadowRoot.querySelector("button") as html.ButtonElement;
    } else {
      return element.shadowRoot.querySelector("button") as html.ButtonElement;
    }
  }

  void keys(html.InputElement input, String text) {
    input.value = text;
    tb.triggerEvent(input, 'change');
  }

}