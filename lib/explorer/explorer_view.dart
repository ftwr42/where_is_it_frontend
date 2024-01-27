import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer_view.dart';
import 'package:where_is_it/explorer/grid_item_view/grid_item_view.dart';
import 'package:where_is_it/fab/fab_view.dart';
import 'package:where_is_it/profile/profile_state.dart';
import 'package:where_is_it/routing/routing.dart';
import 'package:where_is_it/searchbar/searchbar_view.dart';
import 'package:where_is_it/singleton.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

import 'explorer_model.dart';
import 'grid_container/grid_container_view.dart';

class ExplorerView extends StatelessWidget {
  ExplorerView({super.key}) {
    Singleton.getInstance();
    var root = Singleton.root;
    root?.addChild(
        StateHolder<ProfileState>(ProfileState(), nodeName: 'profile'));
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> elements = ExplorerModel.items;

    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: DrawerView(),
      floatingActionButton: const FabView(),
      body: CustomScrollView(
        slivers: [
          SearchBarView(elements),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var element = elements[index];

                return GestureDetector(
                    onLongPress: () {
                      var navigateTo;
                      if (element['type'] == 'container') {
                        navigateTo = Routing.navigateTo(context,
                            Routing.CONTAINERVIEW, Routing.DIRECTION_TOP);
                      } else {
                        navigateTo = Routing.navigateTo(
                            context, Routing.ITEMVIEW, Routing.DIRECTION_TOP);
                      }

                      Navigator.push(context, navigateTo);
                    },
                    onTap: () {
                      var navigateTo = Routing.navigateTo(context,
                          Routing.EXPLORERVIEW, Routing.DIRECTION_RIGHT);
                      Navigator.push(context, navigateTo);
                    },
                    child: elementWidgetType(elements, index));
              },
              childCount: elements.length,
            ),
            gridDelegate: elementGridDelegate(2),
          ),
        ],
      ),
    );
  }

  StatefulWidget elementWidgetType(
      List<Map<String, dynamic>> elements, int index) {
    if (elements[index]['type'] == 'container') {
      return GridContainerView(elements[index]);
    } else {
      return GridItemView(elements[index]);
    }
  }

  SliverGridDelegateWithFixedCrossAxisCount elementGridDelegate(
          int crossAxisCount) =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 3.0, // Horizontaler Abstand zwischen den Elementen
        mainAxisSpacing: 3.0, // Vertikaler Abstand zwischen den Elementen
        // childAspectRatio: 1.0, // Verhältnis von Breite zu Höhe
      );
}
