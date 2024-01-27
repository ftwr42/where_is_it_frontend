import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';

import '../../aa_assets/styles/text.dart';
import '../../aa_project_defaults/project_text_fields.dart';

class FastItemCreator extends StatelessWidget {
  const FastItemCreator(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var textEditingControllerLocation = TextEditingController();
    var textEditingControllerTitle = TextEditingController();
    var textEditingControllerJson = TextEditingController();

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
                _propertiesInput("location", textEditingControllerLocation),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput("title", textEditingControllerTitle),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput("json", textEditingControllerJson),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => {
            item['title'] = textEditingControllerTitle.text,
            item['location'] = textEditingControllerLocation.text,
            item['container_id'] = "store_a",
            textEditingControllerJson.text = jsonEncode(item),
            NetworkManager.sendPostRequestItems(jsonEncode(item)),
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

  static Widget _propertiesInput(
          String key, TextEditingController controller) =>
      Container(
        child: ProjectTextFields.textFieldCompact(key, controller),
      );

  Widget title() {
    var style = WiiTextStyles.header1Style();
    return Text(
      "Item",
      style: style,
    );
  }
}
