import 'package:flutter/material.dart';
import 'package:where_is_it/appbar/search_appbar.dart';
import 'package:where_is_it/drawer/drawer_view.dart';
import 'package:where_is_it/profile/profile_state.dart';
import 'package:where_is_it/routing/rot.dart';
import 'package:where_is_it/singleton.dart';
import 'package:where_is_it/store/explorer/explorer_state.dart';
import 'package:where_is_it/store/explorer/grid_item_view/grid_item_view.dart';
import 'package:where_is_it/store/fab/fab_view.dart';
import 'package:where_is_it/store/search/searchbar_view.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

import 'grid_container/grid_container_view.dart';

class ExplorerView extends StatelessWidget {
  ExplorerView({super.key}) {
    Singleton.getInstance();
    var root = Singleton.root;
    root?.addChild(StateHolder<ProfileState>(ProfileState(), nodeName: 'profile'));
    root?.addChild(StateHolder<ExplorerState>(ExplorerState(), nodeName: 'explorer'));
  }

  @override
  Widget build(BuildContext context) {
    Singleton.getInstance();
    var root = Singleton.root;
    var state = root?.getState('explorer') as ExplorerState;

    var elements = state.elements;

    return Scaffold(
      appBar: WiiAppBar.getBar(),
      drawer: DrawerView(),
      floatingActionButton: const FabView(),
      body: CustomScrollView(
        slivers: [
          SearchBarView(),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var element = elements[index];

                return GestureDetector(
                    onLongPress: () {
                      var navigateTo;
                      if (element['type'] == 'container') {
                        navigateTo = Rot.navigateTo(context, Rot.CONTAINERVIEW, Rot.DIRECTION_TOP);
                      } else {
                        navigateTo = Rot.navigateTo(context, Rot.ITEMVIEW, Rot.DIRECTION_TOP);
                      }

                      Navigator.push(context, navigateTo);
                    },
                    onTap: () {
                      var navigateTo =
                          Rot.navigateTo(context, Rot.EXPLORERVIEW, Rot.DIRECTION_RIGHT);
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

  StatefulWidget elementWidgetType(List<Map<String, dynamic>> elements, int index) {
    if (elements[index]['type'] == 'container') {
      return GridContainerView(elements[index]);
    } else {
      return GridItemView(elements[index]);
    }
  }

  SliverGridDelegateWithFixedCrossAxisCount elementGridDelegate(int crossAxisCount) =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 3.0, // Horizontaler Abstand zwischen den Elementen
        mainAxisSpacing: 3.0, // Vertikaler Abstand zwischen den Elementen
        // childAspectRatio: 1.0, // Verhältnis von Breite zu Höhe
      );
}
