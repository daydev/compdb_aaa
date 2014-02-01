library compdb.standalone;

import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_pagination/angular_pagination.dart';
import 'package:angular_convert/angular_convert.dart';

import 'package:logging/logging.dart' as logging;

import 'package:compdb/core/compdb_core.dart';
import 'package:compdb/components/module.dart';
import 'package:compdb/service/compdb_service.dart';
import 'package:compdb/views/module.dart';

part 'storage_reset_controller.dart';

void main() {
  logging.hierarchicalLoggingEnabled = true;
  IndexDbDriver.log.level = logging.Level.ALL;
  IndexDbDriver.log.onRecord.listen((logging.LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
  ngBootstrap(module: new CompdbStandaloneModule());
}

class CompdbStandaloneModule extends Module {
  CompdbStandaloneModule() {
    install(new AngularConvertModule());
    install(new AngularPaginationModule());
    install(new CompdbLocalServiceModule());
    install(new CompdbComponentsModule());
    install(new CompdbViewsModule());

    type(StorageResetController);

    factory(NgRoutingUsePushState, (_) => new NgRoutingUsePushState.value(false));
  }
}