import 'package:flutter/material.dart';

import '../../aa_project_defaults/textfields.dart';

class DialogConfig {
  var propertiesInput_name = _propertiesInput('Name');
  var propertiesInput_tag = _propertiesInput('#tag');

  BuildContext context;

  DialogConfig({required this.context});

  properties() {
    return Column(
      children: [
        propertiesInput_name,
        propertiesInput_tag,
      ],
    );
  }

  List<Widget> actions() {
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

  static Widget _propertiesInput(String key) => Container(
        child: ProjectTextFields.nameField(key),
      );
}
