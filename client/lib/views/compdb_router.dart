part of compdb.views;

class CompdbRouter implements RouteInitializer {
  init(Router router, ViewFactory view) {
    router.root
      ..addRoute(
        name: 'computer_edit',
        path: "/computers/:computerId",
        enter: view('/packages/compdb/views/computers/edit/computer_edit.html'))
      ..addRoute(
        name: "computer_list",
        path: "/computers",
        enter: view("/packages/compdb/views/computers/list/computer_list.html"))
      ..addRoute(
        name: 'default_redirect',
        defaultRoute: true,
        enter: (_) {
          router.go('computer_list', new Map(), replace: true);
        });
  }

}