import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/textfields.dart';

class FabContainerView extends StatelessWidget {
  const FabContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectTextFields.nameField("name"),
        ProjectTextFields.textField("tag name"),
      ],
    );
  }
}
