import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/fab/fab.dart';
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
        appBar: SearchAppBar.bla(),
        drawer: Drawer(
          key: key,
        ),
        floatingActionButton: Fab(
          key: key,
        ),
        body: StartView(
          key: key,
        ),
      ),
    );
  }

  AppBarWithSearchSwitch buildAppBarWithSearchSwitch() {
    return AppBarWithSearchSwitch(
      onChanged: (text) {
        searchText.value = text;
      },
      // onSubmitted: (text) {
      //   searchText.value = text;
      // },
      animation: AppBarAnimationSlideLeft.call,
      // animation: (child) => AppBarAnimationSlideLeft(
      //     milliseconds: 400, withFade: false, percents: 0.25, child: child),
      appBarBuilder: (context) {
        return AppBar(
          title: Text("title"),
          actions: const [
            // AppBarSpeechButton(),  // in version 2.0+
            AppBarSearchButton(),
            // or
            // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
          ],
        );
      },
    );
  }
}
