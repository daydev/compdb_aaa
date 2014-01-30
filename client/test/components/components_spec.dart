part of compdb.test;

void keys(html.InputElement input, String text) {
  input.value = text;
  input.dispatchEvent(new html.Event('change'));
}

testComponents() {
  List<ComponentSpec> specs = [
      new CompdbOrderingHeaderSpec(),
      new CompdbPagerSpec(),
      new CompdbSearchInputSpec()
  ];

  specs.forEach((spec) => spec.doTest());
}

abstract class ComponentSpec {
  final String name;

  TestBed tb;

  Scope scope;

  html.Element element;

  ComponentSpec(this.name);

  void doTest() {
    group("[components/$name]", () {

      setUp(() {
        schedule(setUpInjector);
        schedule(module((Module m) {
          m.install(new AngularConvertModule());
          m.install(new CompdbComponentsModule());
        }));
        schedule(_preloadFiles);
        schedule(inject((Scope scope, TestBed tb) {
          this.scope = scope;
          this.tb = tb;
        }));
        schedule(initScope);
        schedule(() => element = tb.compile(content(), scope: scope));
        _apply();

        currentSchedule.onComplete.schedule(tearDownInjector);
      });

      _doTest();
    });
  }

  void initScope();

  String content();

  void _doTest();

  void _apply([Function f]) {
    if (f != null) {
      schedule(f);
    }
    schedule(() => scope.$digest());
  }

  html.Element _query(String selector) => element.shadowRoot.querySelector(selector);

  _preloadFiles() {
    updateCache(template, response) => inject((TemplateCache cache) => cache.put(template, response));
    final futures = [
        html.HttpRequest.request("base/packages/compdb/components/${name}/${name}.html", method: "GET")
        .then((_) => updateCache("/packages/compdb/components/${name}/${name}.html",
                                 new HttpResponse(200, _.response))),
        html.HttpRequest.request("base/packages/compdb/components/${name}/${name}.css", method: "GET")
        .then((_) => updateCache("/packages/compdb/components/${name}/${name}.css", new HttpResponse(200, _.response)))
    ] ;

    return Future.wait(futures);
  }

}