import 'package:flutter/material.dart';

import '../../aa_project_defaults/textfields.dart';
import '../../camera/camera_stream_widget.dart';
import 'dialog_config.dart';

class DialogView extends StatelessWidget {
  const DialogView(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    var dialogConfig = DialogConfig(context: context);

    return AlertDialog(
      content: Column(
        children: [
          const CameraStreamWidget(),
          ProjectTextFields.imageUpload("No image chosen yet"),
          const SizedBox(
            height: 10,
          ),
          dialogConfig.properties(),
        ],
      ),
      actions: dialogConfig.actions(),
    );
  }
}
