import 'package:flutter/material.dart';

import '../../aa_assets/styles/text.dart';
import '../../aa_project_defaults/textfields.dart';
import 'dialog_config.dart';

class FastItemCreator extends StatelessWidget {
  const FastItemCreator(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var dialogConfig = DialogConfig(context: context);

    return AlertDialog(
      content: Column(
        children: [
          title(),
          // const CameraStreamWidget(),
          ProjectTextFields.imageUpload("No image chosen yet"),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              _propertiesInput('Location'),
              SizedBox(
                height: 10,
              ),
              _propertiesInput('Title'),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('SAFE'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('CLOSE'),
        ),
      ],
    );
  }

  static Widget _propertiesInput(String key) => Container(
        child: ProjectTextFields.nameField(key),
      );

  Widget title() {
    var style = WiiTextStyles.header1Style();
    return Text(
      "Item",
      style: style,
    );
  }
}
