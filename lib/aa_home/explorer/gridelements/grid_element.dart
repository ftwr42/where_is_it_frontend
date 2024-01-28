import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/elements/elements_page.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';
import 'package:where_is_it/aa_home/explorer/gridelements/grid_element_controller.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';

class GridElementView extends GetView<GridElementController> {
  late GridElementModel model;
  GridElementView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    var find = Get.find<ExplorerController>();
    return GestureDetector(
      onLongPress: () {
        Get.to(ElementsPage(model: model));
      },
      child: Stack(children: [
        Align(alignment: Alignment.topLeft, child: Icon(Icons.add_circle_outline)),
        Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  model.type,
                  style: ProjectTextStyles.header1Style(),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              // height: 100,
              child: Center(
                  child: Expanded(
                child: Stack(
                  children: [
                    Text(model.name),
                    Text(model.shortDescription),
                    Container(
                        color: Colors.white,
                        child: Expanded(
                          child: Image(
                            height: 180,
                            width: 180,
                            image: model.image,
                          ),
                        )
                        // child: Image.asset("resources/cupboard_default.png")
                        ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ]),
    );
  }
}
