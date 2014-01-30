part of compdb.core;

class Computer {
  int id;

  String name;

  DateTime introduced;

  DateTime discontinued;

  int companyId;

  Computer(this.id, this.name, this.introduced, this.discontinued, this.companyId);

  Computer.empty(): this(null, "", null, null, null);

  String toString() => "Computer($id, $name, $introduced, $discontinued, $companyId)";
}