import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/profile/profile_state.dart';
import 'package:where_is_it/singleton.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key}) {
    Singleton.getInstance();
    var root = Singleton.root;
    root?.addChild(StateHolder<ProfileState>(ProfileState(), nodeName: "profilestate"));
  }

  @override
  Widget build(BuildContext context) {
    var state = Singleton.root?.getState('profilestate') as ProfileState;

    var profile = {};

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            properties("Firstname", state.textEditingControllerFirstname),
            properties("Lastname", state.textEditingControllerLastname),
            properties("E-Mail", state.textEditingControllerEmail),
            ElevatedButton(
              onPressed: () {
                profile["firstname"] = state.textEditingControllerFirstname.text;
                profile["lastname"] = state.textEditingControllerLastname.text;
                profile["email"] = state.textEditingControllerEmail.text;
                NetworkManager.sendPostProfile(jsonEncode(profile));

                var find = Get.find();
                find.change();

                Navigator.of(context).pop();
              },
              child: Text("SAVE"),
            ),
          ],
        ),
      ),
    );
  }

  Widget properties(String name, TextEditingController controller) {
    return Padding(
        padding: EdgeInsets.all(8), child: ProjectTextFields.textFieldCompact(name, controller));
  }
}
