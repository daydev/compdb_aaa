part of compdb.service;

class CompanyLocalService extends LocalStorageService<Company> implements CompanyService {

  CompanyLocalService(Morph morph, IndexDbDriver driver): super(morph, driver, "companies");
}