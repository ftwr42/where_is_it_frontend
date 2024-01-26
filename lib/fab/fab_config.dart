import 'package:flutter/material.dart';

import 'dialog/fast_container_creator.dart';
import 'dialog/fast_item_creator.dart';

class FabConfig {
  static const String FABDIALOG1 = "dialog1";
  static const String FABDIALOG2 = "dialog2";

  static List<Map<String, dynamic>> elements = [
    {'icon': Icons.add, 'route': FabConfig.FABDIALOG1},
    {'icon': Icons.add_box, 'route': FabConfig.FABDIALOG2},
  ];

  static List<Widget> buttons(BuildContext context) {
    return elements
        .map((e) => ElevatedButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return (e['route'] == FABDIALOG1)
                      ? FastItemCreator(context)
                      : FastContainerCreator(context);
                },
              );
            },
            child: Icon(e['icon'])))
        .toList();
  }
}
