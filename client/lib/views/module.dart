library compdb.views;

import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_pagination/angular_pagination.dart';

import 'package:compdb/core/compdb_core.dart';
import 'package:compdb/service/compdb_service.dart';

part 'compdb_router.dart';
part 'computers/edit/computer_edit_controller.dart';
part 'computers/list/computer_list_controller.dart';

class CompdbViewsModule extends Module {
  CompdbViewsModule() {
    type(ComputerListController);
    type(ComputerEditController);
    type(RouteInitializer, implementedBy: CompdbRouter);
  }
}