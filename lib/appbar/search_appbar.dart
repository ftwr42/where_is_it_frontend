import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';

class SearchAppBar {
  final searchText = ValueNotifier<String>('');

  static AppBarWithSearchSwitch bla() {
    return AppBarWithSearchSwitch(
      onChanged: (text) {
        // searchText.value = text;
      },
      // onSubmitted: (text) {
      //   searchText.value = text;
      // },
      animation: (child) => AppBarAnimationSlideLeft(
          milliseconds: 400, withFade: false, percents: 0.25, child: child),
      appBarBuilder: (context) {
        return AppBar(
          title: Text("title"),
          actions: const [
            AppBarSearchButton(),
          ],
        );
      },
    );
  }
}
