import 'package:flutter/material.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/store/fab/dialog/fast_container_creator_state.dart';

class FastContainerCreator extends StatelessWidget {
  FastContainerCreator(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var state = FastContainerCreatorState();

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
                _propertiesInput('Location', state.textEditingControllerLocation),
                SizedBox(
                  height: 10,
                ),
                _propertiesInput('Title', state.textEditingControllerTitle),
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
            state.textEditingControllerJson.text =
                state.textEditingControllerLocation.text + state.textEditingControllerTitle.text
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

  static Widget _propertiesInput(String key, TextEditingController controller) => Container(
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
