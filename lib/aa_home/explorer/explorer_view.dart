import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';
import 'package:where_is_it/aa_home/explorer/gridelements/grid_element.dart';

class ExplorerView extends GetView<ExplorerController> {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    var obx = Obx(
      () {
        var getGridElements = controller.getGridElements;
        return SliverGrid(
          delegate: SliverChildBuilderDelegate(childCount: getGridElements.length,
              (BuildContext context, int index) {
            return GridElementView(model: getGridElements[index]);
          }),
          gridDelegate: elementGridDelegate(2),
        );
      },
    );

    return obx;
  }

  SliverGridDelegateWithFixedCrossAxisCount elementGridDelegate(int crossAxisCount) =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 3.0, // Horizontaler Abstand zwischen den Elementen
        mainAxisSpacing: 3.0, // Vertikaler Abstand zwischen den Elementen
        // childAspectRatio: 1.0, // Verhältnis von Breite zu Höhe
      );
}
