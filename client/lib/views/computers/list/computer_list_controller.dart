part of compdb.views;

@NgController(
    selector: "[computer-list]",
    publishAs: "ctrl"
    )
class ComputerListController implements NgAttachAware {
  final Scope scope;

  final ComputerService computerService;

  final CompanyService companyService;

  Map filter = {
      "name": ""
  };

  List<Computer> computers = [];

  Map<int, Company> companies = new Map();

  Paginator paginator = new Paginator(0);

  Ordering ord = new ComputerOrdering.empty();

  ComputerListController(this.scope, this.computerService, this.companyService) {
    _loadData();
  }

  _loadData() {
    _loadCompanies();
    _loadComputers();
  }

  _loadComputers() {
    computerService.list().then((computers) => this.computers.addAll(computers));
  }

  _loadCompanies() {
    companyService.asMap().then((map) {
      companies.addAll(map);
      this.ord = new ComputerOrdering(this.companies);
    });
  }

  attach() {
    scope.$watch(() => computers.length, (newLength) => paginator.itemsTotal = newLength);
  }

  String companyName(Computer computer) {
    return computer.companyId != null ? companies[computer.companyId].name : "";
  }

}