import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/generated/assets.dart';

class FastElementCreator extends StatelessWidget {
  late String type;
  FastElementCreator(BuildContext context, bool isItem, {super.key}) {
    type = (isItem) ? 'item' : 'container';
  }

  @override
  Widget build(BuildContext context) {
    var textEditingControllerName = TextEditingController();
    var textEditingControllerShortDescription = TextEditingController();

    var item = {};

    return AlertDialog(
      content: Container(
        width: 350,
        height: 500,
        child: Column(
          children: [
            title(),
            const SizedBox(
              height: 10,
            ),
            // const CameraStreamWidget(),
            const SizedBox(
              height: 10,
            ),
            ProjectTextFields.imageUpload("No image chosen yet"),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                propertyWrapper("Name", textEditingControllerName),
                propertyWrapper("Short description", textEditingControllerShortDescription),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            var name = textEditingControllerName.text;
            var shortDescription = textEditingControllerShortDescription.text;

            item['name'] = name;
            item['shortdescription'] = shortDescription;
            item['isinid'] = "store_a"; //todo get current container id we are just in
            // NetworkManager.sendPostRequestItems(jsonEncode(item));

            var find = Get.find<ExplorerController>();
            find.addGridModel(new GridElementModel(Assets.imagesKatze,
                type: type, isinid: "store_a", name: name, shortDescription: shortDescription));

            Navigator.of(context).pop();
          },
          child: const Text('SAVE'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('CLOSE'),
        ),
      ],
    );
  }

  Widget propertyWrapper(
    String name,
    TextEditingController controller,
  ) =>
      Column(
        children: [
          ProjectTextFields.textFieldCompact(name, controller),
          const SizedBox(
            height: 10,
          ),
        ],
      );

  Widget title() {
    var style = ProjectTextStyles.header1Style();
    return Text(
      type,
      style: style,
    );
  }
}
