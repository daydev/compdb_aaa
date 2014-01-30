library compdb.components.ordering_header;

import 'package:angular/angular.dart';
import 'package:compdb/core/compdb_core.dart';

part 'ordering_header.dart';

class CompdbOrderingHeaderModule extends Module {
  CompdbOrderingHeaderModule() {
    type(CompdbOrderingHeader);
  }
}