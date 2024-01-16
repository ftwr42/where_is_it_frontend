import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/textfields.dart';
import 'package:where_is_it/camera/camera_stream_widget.dart';

class FabElementView extends StatefulWidget {
  const FabElementView(BuildContext context, {super.key});

  @override
  State<FabElementView> createState() => _FabElementViewState();
}

class _FabElementViewState extends State<FabElementView> {
  @override
  Widget build(BuildContext context) {
    Widget imageUpload() => SizedBox(
          width: 60,
          height: 60,
          child: Container(
            color: Colors.amberAccent,
          ),
        );

    return Column(
      children: [
        CameraStreamWidget(),
        ProjectTextFields.imageUpload("No image chosen yet"),
        SizedBox(
          height: 10,
        ),
        propertiesInput(),
      ],
    );
  }

  Widget imageInput() => Container(
        child: ProjectTextFields.nameField("image placeholder"),
      );

  Widget propertiesInput() => Container(
        child: ProjectTextFields.nameField("Name"),
      );
}
