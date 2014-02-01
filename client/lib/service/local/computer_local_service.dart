part of compdb.service;

class ComputerLocalService extends LocalStorageService<Computer> implements ComputerService {

  ComputerLocalService(Morph morph, IndexDbDriver driver): super(morph, driver, "computers");
}