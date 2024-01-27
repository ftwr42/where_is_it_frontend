import 'package:where_is_it/wii_state.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

class Stateon {
  static final Stateon _instance = Stateon._internal();
  late StateHolder root = StateHolder(WiiState(), nodeName: '/');

  Stateon._internal() {}

  static Stateon get inst => _instance;
}
