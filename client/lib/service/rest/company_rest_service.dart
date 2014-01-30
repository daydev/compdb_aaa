part of compdb.service;

class CompanyRestService extends RestService<Company> implements CompanyService {

  CompanyRestService(Morph morph, Http http): super(morph, http, "companies");

}