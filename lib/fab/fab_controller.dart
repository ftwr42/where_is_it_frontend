import 'package:flutter/material.dart';
import 'package:where_is_it/fab/dialog/dialog_view.dart';

class FabController {
  static const String FABDIALOG1 = "dialog1";
  static const String FABDIALOG2 = "dialog2";
  static const String FABDIALOG3 = "dialog3";

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return <String, WidgetBuilder>{
      FABDIALOG1: (context) => DialogView(context),
      FABDIALOG2: (context) => DialogView(context),
      FABDIALOG3: (context) => DialogView(context),
    };
  }

  static pressExpandedButton(BuildContext context, String route) =>
      showDialog<void>(
        context: context,
        builder: (context) {
          return DialogView(context);
        },
      );
}
