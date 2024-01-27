import 'package:where_is_it/wii_state.dart';
import 'package:where_is_it/zz_stateholder/state_holder_tree.dart';

class Stateon {
  static final Stateon _instance = Stateon._internal();
  late StateHolderTree stateHolderTree;

  Stateon._internal() {
    stateHolderTree = StateHolderTree(stateConfig: WiiState(), nodeName: "/");
  }

  static Stateon get instance => _instance;
}
