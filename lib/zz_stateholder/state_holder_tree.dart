import 'package:where_is_it/zz_stateholder/stateconfig.dart';

class StateHolderTree<T extends StateConfig> {
  final String nodeName;
  late StateHolderTree parent;

  final T stateConfig;
  final List<StateHolderTree> children = [];
  final Map<String, StateHolderTree> childMap = {};

  StateHolderTree({required this.stateConfig, required this.nodeName});

  void addChild(StateHolderTree child) {
    child.parent = this;
    children.add(child);
    childMap.update(child.nodeName, (value) => child);
  }
}
