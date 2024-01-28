import 'package:flutter/material.dart';
import 'package:where_is_it/aa_home/explorer/explorer_view.dart';
import 'package:where_is_it/aa_home/fab/fab_view.dart';
import 'package:where_is_it/aa_home/search/searchbar_view.dart';
import 'package:where_is_it/drawer/drawer_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerView(),
      floatingActionButton: const FabView(),
      body: CustomScrollView(
        slivers: [
          SearchBarView(),
          ExplorerView(),
        ],
      ),
    );
  }
}
