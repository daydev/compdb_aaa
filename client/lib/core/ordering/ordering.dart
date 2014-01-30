part of compdb.core;

class Ordering {
  String column;

  bool isAsc;

  bool get isDesc => !isAsc;

  void set isDesc(bool isDesc) {
    this.isAsc = !isDesc;
  }

  Ordering(this.column, this.isAsc);

  Ordering.asc(String column): this(column, true);

  Ordering.desc(String column): this(column, false);

  void toggle() {
    isAsc = !isAsc;
  }

}