library compdb.componenets;

import 'package:di/di.dart';
import 'package:compdb/components/ordering_header/module.dart';
import 'package:compdb/components/pager/module.dart';
import 'package:compdb/components/search_input/module.dart';

class CompdbComponentsModule extends Module {
  CompdbComponentsModule() {
    install(new CompdbOrderingHeaderModule());
    install(new CompdbPagerModule());
    install(new CompdbSearchInputModule());
  }
}