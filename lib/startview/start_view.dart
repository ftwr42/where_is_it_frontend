import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer.dart';
import 'package:where_is_it/fab/fab.dart';

import '../elementsgrid/elementsgrid.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: WiiDrawer(),
      floatingActionButton: const WiiFab(),
      body: ElementsGrid(),
    );
  }
}
