import 'package:where_is_it/routing/stateconfig.dart';

class StateHolderTree<T extends StateConfig> {
  late String nodeName;
  late StateHolderTree parent;

  final T stateConfig;
  final List<StateHolderTree> children = [];

  StateHolderTree({required this.stateConfig, required this.nodeName});

  void addChild(StateHolderTree child) {
    child.parent = this;
    children.add(child);
  }
}
