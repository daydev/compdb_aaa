part of compdb.test;

testComputerOrdering() {
  Map<int, Company> companies;
  ComputerOrdering ord;
  Computer comp;

  group("[ComputerOrdering]", () {
    setUp(() {
      companies = new Map.identity()
        ..[1] = new Company(1, "testA")
        ..[2] = new Company(2, "testB");
      ord = new ComputerOrdering(companies);
      comp = new Computer(1, "test", null, null, null);
    });

    test("by default should have column 'name' and asc order", () {
      expect(ord.isAsc, true);
      expect(ord.column, "name");
    });

    test("should clone companies map during construction", () {
      expect(ord.companies, hasLength(2));
      companies.clear();
      expect(ord.companies, hasLength(2));
    });

    test("when column is 'name' should return computer name as ordering value", () {
      expect(ord.ordValue(comp), "test");
    });

    test("when column is 'introduced' should return computer introduced timestamp", () {
      DateTime now = new DateTime.now();
      comp = new Computer(1, "test", now, null, null);
      ord.column = "introduced";
      expect(ord.ordValue(comp), now.millisecondsSinceEpoch);
    });

    test("when column is 'introduced'; introduced date is null; order is asc; then should return very big date", () {
      ord.column = "introduced";
      expect(ord.ordValue(comp), ComputerOrdering.VERY_BIG_DATE);
    });

    test("when column is 'introduced'; introduced date is null; order is desc; should return very small date", () {
      ord.column = "introduced";
      ord.isDesc = true;
      expect(ord.ordValue(comp), ComputerOrdering.VERY_SMALL_DATE);
    });

    test("when column is 'discontinued' should return computer discontinued timestamp", () {
      DateTime now = new DateTime.now();
      comp = new Computer(1, "test", null, now, null);
      ord.column = "discontinued";
      expect(ord.ordValue(comp), now.millisecondsSinceEpoch);
    });

    test("when column is 'discontinued'; discontinued date is null; order is asc; then should return very big date",
             () {
           ord.column = "discontinued";
           expect(ord.ordValue(comp), ComputerOrdering.VERY_BIG_DATE);
         });

    test("when column is 'discontinued'; discontinued date is null; order is desc; then should return very small date",
             () {
           ord.column = "discontinued";
           ord.isDesc = true;
           expect(ord.ordValue(comp), ComputerOrdering.VERY_SMALL_DATE);
         });

    test("when column is 'company' should return computer manufacturer name", () {
      comp = new Computer(1, "test", null, null, 1);
      ord.column = "company";
      expect(ord.ordValue(comp), "testA");
    });

    test("when column is 'company' and comapanyId is null should return empty string", () {
      ord.column = "company";
      expect(ord.ordValue(comp), isEmpty);
    });

    test("should throw InvalidArgumentException if unknown column is specified", () {
      try {
        ord.column = "unknown";
        expect(ord.ordValue(comp), throwsArgumentError);
      }
      on ArgumentError catch(e) {
        expect(e.message, contains("unknown"));
        return;
      }
      throw new Exception("Expected ArgumentException");
    });

  });

}