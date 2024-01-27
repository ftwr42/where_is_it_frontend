import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();

    var store = {};

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          ProjectTextFields.textFieldCompact("Name", controllerName),
          ElevatedButton(
              onPressed: () {
                store['name'] = controllerName.text;
                NetworkManager.sendPostRequestStore(jsonEncode(store));
                Navigator.of(context).pop();
              },
              child: Text("SAVE"))
        ],
      )),
    );
  }
}
