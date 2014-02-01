part of compdb.service;

class CompdbLocalServiceModule extends Module {

  CompdbLocalServiceModule() {
    type(DbConfig);
    type(IndexDbDriver);
    type(Morph);
    type(ComputerService, implementedBy: ComputerLocalService);
    type(CompanyService, implementedBy: CompanyLocalService);
  }
}