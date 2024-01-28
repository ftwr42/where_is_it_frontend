import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:where_is_it/aa_home/fab/dialog/fast_item_creator_state.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';

class FastItemCreator extends StatelessWidget {
  FastItemCreator(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var state = FastItemCreatorState();

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
                _propertiesInput("location", state.textEditingControllerLocation),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput("title", state.textEditingControllerTitle),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput("json", state.textEditingControllerJson),
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
            item['title'] = state.textEditingControllerTitle.text,
            item['location'] = state.textEditingControllerLocation.text,
            item['container_id'] = "store_a",
            state.textEditingControllerJson.text = jsonEncode(item),
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

  static Widget _propertiesInput(String key, TextEditingController controller) => Container(
        child: ProjectTextFields.textFieldCompact(key, controller),
      );

  Widget title() {
    var style = ProjectTextStyles.header1Style();
    return Text(
      "Item",
      style: style,
    );
  }
}
