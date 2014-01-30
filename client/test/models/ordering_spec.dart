part of compdb.test;

testOrdering() {

  group("Ordering", () {

    test("should toggle order direction", () {
      Ordering ord = new Ordering.asc("test");
      expect(ord.isAsc, true);
      ord.toggle();
      expect(ord.isDesc, true);
      ord.toggle();
      expect(ord.isAsc, true);
    });

  });

}