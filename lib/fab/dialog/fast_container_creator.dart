import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';

import '../../aa_project_defaults/project_text_fields.dart';

class FastContainerCreator extends StatelessWidget {
  const FastContainerCreator(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var textEditingControllerLocation = TextEditingController();
    var textEditingControllerTitle = TextEditingController();
    var textEditingControllerJson = TextEditingController();

    var item = {
      "location": textEditingControllerLocation.text,
      "title": textEditingControllerTitle.obs
    };

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
                _propertiesInput('Location', textEditingControllerLocation),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput('Title', textEditingControllerTitle),
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
            textEditingControllerJson.text =
                textEditingControllerLocation.text +
                    textEditingControllerTitle.text
            // Navigator.of(context).pop(),
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
      "Container",
      style: style,
    );
  }
}
