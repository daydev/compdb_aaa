part of compdb.views;

@NgController(
    selector: "[computer-edit]",
    publishAs: "ctrl"
    )
class ComputerEditController {
  static const String NEW_PARAMETER = "new";

  final ComputerService computerService;

  final CompanyService companyService;

  final Router router;

  int computerId;

  Computer computer;

  List<Company> companies = [];

  ComputerEditController(this.router,
                         this.computerService,
                         this.companyService,
                         RouteProvider provider) {
    String parameter = provider.parameters["computerId"];
    if (NEW_PARAMETER == parameter) {
      computerId = null;
      computer = new Computer.empty();
      _loadCompanies();
    } else {
      try {
        this.computerId = int.parse(provider.parameters["computerId"]);
        _loadComputer();
        _loadCompanies();
      } catch (e) {
        throw new ArgumentError("Unknown path parameter $parameter");
      }
    }
  }

  _loadComputer() {
    computerService.find(this.computerId)
    .then((computer) {
      this.computer = computer;
    });
  }

  _loadCompanies() {
    companyService.list()
    .then((companies) {
      this.companies.addAll(companies);
    });
  }

  void save() {
    var future;
    if (computerId != null) {
      future = computerService.update(computerId, computer);
    } else {
      future = computerService.create(computer) ;
    }
    future.then((_) => router.go("computer_list", new Map()));
  }

  void remove() {
    computerService.remove(computerId).then((_) => router.go("computer_list", new Map()));
  }
}