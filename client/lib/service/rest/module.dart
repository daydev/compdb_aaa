part of compdb.service;

class CompdbRestServiceModule extends Module {

  CompdbRestServiceModule() {
    type(Morph);
    type(ComputerService, implementedBy: ComputerRestService);
    type(CompanyService, implementedBy: CompanyRestService);
  }
}