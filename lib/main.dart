import 'package:flutter/material.dart';
import 'package:where_is_it/explorer/explorer_view.dart';
import 'package:where_is_it/routing/routing.dart';
import 'package:where_is_it/stateton.dart';
import 'package:where_is_it/wii_state.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

import 'drawer/drawer_state.dart';

void main() {
  runApp(WiiApp());
}

class WiiApp extends StatelessWidget {
  WiiApp({super.key}) {
    Stateon.inst.root.addChild(StateHolder(DrawerState(), nodeName: '/drawer'));
  }

  @override
  Widget build(BuildContext context) {
    var state = Stateon.inst.root.getState("/") as WiiState;

    return MaterialApp(
      // theme: state.theme,
      home: ExplorerView(),
      routes: Routing.routes(context),
    );
  }
}
