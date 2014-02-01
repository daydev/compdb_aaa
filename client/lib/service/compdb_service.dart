library compdb.service;

import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:indexed_db';

import 'package:angular/angular.dart';
import 'package:logging/logging.dart';
import 'package:morph/morph.dart';

import 'package:compdb/core/compdb_core.dart';

part 'core/crud_service.dart';
part 'core/company_service.dart';
part 'core/computer_service.dart';

part 'rest/module.dart';
part 'rest/rest_service.dart';
part 'rest/computer_rest_service.dart';
part 'rest/company_rest_service.dart';

part 'local/index_db_driver.dart';
part 'local/db_config.dart';
part 'local/module.dart';
part 'local/local_storage_service.dart';
part 'local/computer_local_service.dart';
part 'local/company_local_service.dart';

