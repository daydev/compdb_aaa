part of compdb.standalone;

@NgController(
    selector: "[storage-reset]",
    publishAs: "ctrl"
    )
class StorageResetController {
  final IndexDbDriver driver;
  final Router router;

  StorageResetController(this.driver, this.router);

  void reset() {
    driver.reset().then((_) {
      /*
        A little hacky force redirect, because angular router
        won't reload routeif already on it.
        TODO: Think of something better
       */
      html.window.location.href = "/standalone/index.html";
    });
  }

}