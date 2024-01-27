import 'package:where_is_it/wii_state.dart';

import 'zz_stateholder/state_holder.dart';
import 'zz_stateholder/stateif.dart';

class Singleton {
  static Singleton? _instance;
  static StateHolder<StateIF>? root;

  Singleton._internal();

  static Singleton? getInstance() {
    if (_instance == null) {
      _instance = Singleton._internal();
      root = StateHolder<WiiState>(WiiState(), nodeName: 'wii');
    }

    return _instance;
  }
}
