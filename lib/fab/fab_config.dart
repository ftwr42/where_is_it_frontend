import 'package:flutter/material.dart';

import 'fab_controller.dart';

class FabConfig {
  static List<Map<String, dynamic>> elements = [
    {'icon': Icons.pan_tool, 'route': FabController.FABDIALOG1},
    {'icon': Icons.add_box, 'route': FabController.FABDIALOG2},
    {'icon': Icons.add_box, 'route': FabController.FABDIALOG3},
  ];

  static List<Widget> buttons(BuildContext context) {
    return elements
        .map((e) => _expandedButton(context, e['icon'], e['route']))
        .toList();
  }

  static Widget _expandedButton(
          BuildContext context, IconData iconData, String index) =>
      ElevatedButton(
        onPressed: () => FabController.pressExpandedButton(context, index),
        child: Icon(iconData),
      );
}
