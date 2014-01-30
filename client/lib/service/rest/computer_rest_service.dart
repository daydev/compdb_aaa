part of compdb.service;

class ComputerRestService extends RestService<Computer> implements ComputerService {

  ComputerRestService(Morph morph, Http http) : super(morph, http, "computers");

}
