

import 'package:where_is_it/wii_state.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

class Stateon {
  static final Stateon _instance = Stateon._pContructor();
  late StateHolder root = StateHolder<WiiState>(WiiState(), nodeName: 'wii');

  Stateon._pContructor();

  factory Stateon() {
    return _instance;
  }
}
