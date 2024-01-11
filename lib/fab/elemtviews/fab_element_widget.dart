import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/textfields.dart';

class FabElementView extends StatelessWidget {
  const FabElementView(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageInput(),
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
