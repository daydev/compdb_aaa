part of compdb.core;

class Company {
  int id;

  String name;

  Company(this.id, this.name);

  Company.empty(): this(-1, "");

  String toString() => "Company($id, $name);";
}