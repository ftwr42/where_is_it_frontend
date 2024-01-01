import 'package:flutter/material.dart';

class WiiAppBar {
  final searchText = ValueNotifier<String>('');

  static PreferredSizeWidget getBar() {
    return AppBar(
      // key: key,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text("Where It Is"),
    );
  }
}
