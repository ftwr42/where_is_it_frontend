import 'package:where_is_it/zz_stateholder/stateif.dart';

class StateHolder<T extends StateIF> {
  late String nodeName;
  String treeName = "";
  late StateHolder parent;

  late T state;
  static List<StateHolder> _children = [];

  StateHolder(T state, {required this.nodeName}) {
    this.state = state;
    if (treeName == "") {
      treeName = "/${nodeName}";
    }
  }

  void addChild(StateHolder child) {
    child.parent = this;
    child.treeName = '${this.treeName}/${child.nodeName}';
    _children.add(child);
  }

  void renewChild(StateHolder child) {
    _children.remove(getStateHolder(child.nodeName));
    addChild(child);
  }

  StateIF? getState(String nodeName) {
    for (int i = 0; i < _children.length; ++i) {
      //todo handle with treeName not with nodeName, can be a feature but not unique enough
      var holder = _children[i];
      if (holder.nodeName == nodeName) {
        return holder.state;
      }
    }
    return null;
  }

  StateHolder<StateIF>? getStateHolder(String nodeName) {
    //todo handle with treeName not with nodeName, can be a feature but not unique enough
    for (int i = 0; i < _children.length; ++i) {
      var holder = _children[i];
      if (holder.nodeName == nodeName) {
        return holder;
      }
    }
    return null;
  }

  bool stateHolderExists(String nodeName) {
    for (int i = 0; i < _children.length; ++i) {
      var holder = _children[i];
      if (holder.nodeName == nodeName) {
        return true;
      }
    }
    return false;
  }
}
