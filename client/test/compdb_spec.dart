library compdb.test;

import 'dart:async';
import 'dart:html' as html;

import 'package:scheduled_test/scheduled_test.dart';
import 'package:angular/angular.dart';
import 'package:angular_pagination/angular_pagination.dart';
import 'package:angular_convert/angular_convert.dart';
import 'package:angular/mock/module.dart';

import 'package:compdb/core/compdb_core.dart';
import 'package:compdb/components/module.dart';

part 'components/components_spec.dart';
part 'components/compdb_ordering_header_spec.dart';
part 'components/compdb_pager_spec.dart';
part 'components/compdb_search_input_spec.dart';

part 'models/ordering_spec.dart';
part 'models/computer_ordering_spec.dart';

main() {
  testComponents();

  testOrdering();
  testComputerOrdering();
}