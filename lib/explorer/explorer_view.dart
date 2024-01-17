import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer_view.dart';
import 'package:where_is_it/fab/fab_view.dart';

import 'explorer_grid.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: DrawerView(),
      floatingActionButton: const FabView(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: null,
            primary: false,
            excludeHeaderSemantics: true,
            collapsedHeight: 70,
            floating: true,
            toolbarHeight: 0,
            expandedHeight: 50,
            flexibleSpace: Container(
              color: Color(0x00),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Enter search term',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ExplorerGrid(),
        ],
      ),
    );
  }
}
