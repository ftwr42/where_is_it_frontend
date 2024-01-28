import 'package:flutter/material.dart';
import 'package:where_is_it/aa_home/explorer/explorer_state.dart';
import 'package:where_is_it/pages.dart';

import 'grid_container/grid_container_view.dart';
import 'grid_item_view/grid_item_view.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    var state = ExplorerState();
    var elements = state.elements;

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          var element = elements[index];
          return GestureDetector(
              onLongPress: () {
                var navigateTo;
                if (element['type'] == 'container') {
                  navigateTo =
                      WiiPages.navigateTo(context, WiiPages.CONTAINERVIEW, WiiPages.DIRECTION_TOP);
                } else {
                  navigateTo =
                      WiiPages.navigateTo(context, WiiPages.ITEMVIEW, WiiPages.DIRECTION_TOP);
                }

                Navigator.push(context, navigateTo);
              },
              onTap: () {
                var navigateTo =
                    WiiPages.navigateTo(context, WiiPages.EXPLORERVIEW, WiiPages.DIRECTION_RIGHT);
                Navigator.push(context, navigateTo);
              },
              child: elementWidgetType(elements, index));
        },
        childCount: elements.length,
      ),
      gridDelegate: elementGridDelegate(2),
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
