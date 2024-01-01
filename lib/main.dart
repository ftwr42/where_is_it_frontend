import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer.dart';
import 'package:where_is_it/fab/fab.dart';
import 'package:where_is_it/fab/fab_view.dart';
import 'package:where_is_it/start/start_view.dart';


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
        /**floatingActionButton: WiiFab(
          key: key,
        ),**/
        floatingActionButton: MainScreenFab(
          onAddFolder: () {
            // Add Folder specific logic here
            print('Add Folder action');
          },
          onAddWardrobe: () {
            // Add Wardrobe specific logic here
            print('Add Wardrobe action');
          },
          onTakePicture: () {
            // Take Picture specific logic here
            print('Take Picture action');
          },
          onTakeDefault: () {
            // Take Default specific logic here
            print('Take Default action');
          },
        ),
        body: StartView(
          key: key,
        ),
      ),
    );
  }
}
