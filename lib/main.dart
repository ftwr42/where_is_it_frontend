import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:where_is_it/routing/rot.dart';
import 'package:where_is_it/singleton.dart';
import 'package:where_is_it/store/explorer/explorer_view.dart';
import 'package:where_is_it/wii_state.dart';

void main() {
  Singleton.getInstance();
  runApp(WiiApp());
}

class WiiApp extends StatelessWidget {
  WiiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var root = Singleton.root?.state as WiiState;

    return GetMaterialApp(
      theme: root.theme,
      home: ExplorerView(),
      routes: Rot.routes(context),
    );
  }
}
