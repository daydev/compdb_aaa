part of compdb.core;

class ComputerOrdering extends Ordering {
  /*Year 3000*/
  static const int VERY_BIG_DATE = 32503680000000;

  /*Year 1900*/
  static const int VERY_SMALL_DATE = -2208988800000;

  final Map<int, Company> companies;

  ComputerOrdering(Map<int, Company> companies)
  : super("name", true),
  this.companies = new Map.from(companies);

  ComputerOrdering.empty() : this({
                                  });

  dynamic ordValue(Computer comp) {
    switch (column) {
      case "name":
        return comp.name;
      case "introduced":
        return comp.introduced != null ?
        comp.introduced.millisecondsSinceEpoch
        : isAsc ? VERY_BIG_DATE : VERY_SMALL_DATE;
      case "discontinued":
        return comp.discontinued != null
        ? comp.discontinued.millisecondsSinceEpoch
        : isAsc ? VERY_BIG_DATE : VERY_SMALL_DATE;
      case "company":
        return comp.companyId != null ? companies[comp.companyId].name : "";
      default:
        throw new ArgumentError("Unknown column $column!");
    }
  }

}