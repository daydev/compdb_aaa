library compdb;

import 'package:angular/angular.dart';
import 'package:angular_pagination/angular_pagination.dart';
import 'package:angular_convert/angular_convert.dart';

import 'package:compdb/core/compdb_core.dart';
import 'package:compdb/components/module.dart';
import 'package:compdb/service/compdb_service.dart';
import 'package:compdb/views/module.dart';

void main() {
  ngBootstrap(module: new CompdbModule());
}

class CompdbModule extends Module {
  CompdbModule() {
    install(new AngularConvertModule());
    install(new AngularPaginationModule());
    install(new CompdbRestServiceModule());
    install(new CompdbComponentsModule());
    install(new CompdbViewsModule());

    factory(NgRoutingUsePushState, (_) => new NgRoutingUsePushState.value(false));
  }
}