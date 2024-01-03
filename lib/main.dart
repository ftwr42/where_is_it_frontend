import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer.dart';
import 'package:where_is_it/fab/fab.dart';
import 'package:where_is_it/start/start_view.dart';
import 'package:where_is_it/user/user.dart';
import 'package:where_is_it/user/user_view.dart';

void main() {
  runApp(WiiApp());
}

class WiiApp extends StatelessWidget {
  WiiApp({super.key});

  final searchText = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: WiiAppBar.getBar(),
        drawer: WiiDrawer(),
        endDrawer: WiiUserDrawer(), // Right drawer
        /**  floatingActionButton: WiiFab(
          key: key,
        ),**/
        floatingActionButton: WiiFab(),

        body: StartView(
          key: key,
        ),
      ),
      routes: {
        '/userpage': (context) => UserProfilePage(),
      },
    );
  }
}
