library compdb.components.pager;

import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_pagination/angular_pagination.dart';

part 'pager.dart';

class CompdbPagerModule extends Module {
  CompdbPagerModule() {
    type(CompdbPager);
  }
}
