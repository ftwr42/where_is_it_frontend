import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_model/StoreModel.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/drawer/drawer_controller.dart';

class StorePage extends StatelessWidget {
  late StoreModel model;
  StorePage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerShortDescription = TextEditingController();

    var store = {};

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              "Store Properties",
              style: ProjectTextStyles.header1Style(),
            ),
          ),
          ProjectTextFields.textFieldCompact("${model.name}", controllerName),
          ProjectTextFields.textFieldCompact("${model.id}", controllerId),
          ProjectTextFields.textFieldCompact(
              "${model.shortDescription}", controllerShortDescription),
          ElevatedButton(
              onPressed: () {
                model.name = controllerName.text;
                model.id = controllerId.text;
                model.shortDescription = controllerShortDescription.text;
                // NetworkManager.sendPostRequestStore(jsonEncode(store));
                var find = Get.find<WiiDrawerController>();
                find.getStores.addIf(!find.getStores.contains(model), model);
                find.changeStoreModel();
                Navigator.of(context).pop();
              },
              child: Text("SAVE"))
        ],
      )),
    );
  }
}
