import 'package:flutter/material.dart';

import '../../aa_project_defaults/textfields.dart';
import '../../camera/camera_stream_widget.dart';

class DialogView extends StatelessWidget {
  const DialogView(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          const CameraStreamWidget(),
          ProjectTextFields.imageUpload("No image chosen yet"),
          const SizedBox(
            height: 10,
          ),
          propertiesInput('Name'),
          propertiesInput('#tag'),
        ],
      ),
      actions: actions(context),
    );
  }

  Widget propertiesInput(String key) => Container(
        child: ProjectTextFields.nameField(key),
      );

  List<Widget> actions(BuildContext context) {
    return <Widget>[
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text('SAFE'),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text('CLOSE'),
      ),
    ];
  }
}
