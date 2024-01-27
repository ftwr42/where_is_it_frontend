import 'package:where_is_it/zz_stateholder/stateif.dart';

class StateHolder<T extends StateIF> {
  late String nodeName;
  late String treeName = '/';
  late StateHolder parent;

  late T state;
  late final List<StateHolder> _children = [];

  StateHolder(T stateConfig, {required this.nodeName}) {
    stateConfig = stateConfig;
  }

  void addChild(StateHolder child) {
    child.parent = this;
    child.treeName = '${this.treeName}/${child.nodeName}';
    _children.add(child);
  }

  StateIF? getState(String nodeName) {
    for (int i = 0; i < _children.length; ++i) {
      var holder = _children[i];
      if (holder.nodeName == nodeName) {
        return holder.state;
      }
    }
    return null;
  }

  StateHolder<StateIF>? getStateHolder(String nodeName) {
    for (int i = 0; i < _children.length; ++i) {
      var holder = _children[i];
      if (holder.nodeName == nodeName) {
        return holder;
      }
    }
    return null;
  }
}
