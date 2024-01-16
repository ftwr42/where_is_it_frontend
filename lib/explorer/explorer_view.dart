import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer_view.dart';
import 'package:where_is_it/fab/fab.dart';

import 'explorer_grid.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: DrawerView(),
      floatingActionButton: const WiiFab(),
      body: CustomScrollView(
        slivers: [
          ExplorerGrid(),
        ],
      ),
    );
  }
}
