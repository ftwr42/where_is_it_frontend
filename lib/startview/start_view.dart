import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer.dart';
import 'package:where_is_it/fab/fab.dart';

import '../explorer_start/elements_view.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: WiiDrawer(),
      floatingActionButton: const WiiFab(),
      body: ElementsView(),
    );
  }
}
