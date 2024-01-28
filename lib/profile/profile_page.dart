import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/drawer/drawer_controller.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';

import '../aa_model/profile_model.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingControllerFirstname = TextEditingController();
    TextEditingController textEditingControllerLastname = TextEditingController();
    TextEditingController textEditingControllerEmail = TextEditingController();

    var profile = {};

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            properties("Firstname", textEditingControllerFirstname),
            properties("Lastname", textEditingControllerLastname),
            properties("E-Mail", textEditingControllerEmail),
            ElevatedButton(
              onPressed: () {
                var firstname = textEditingControllerFirstname.text;
                var lastname = textEditingControllerLastname.text;
                var email = textEditingControllerEmail.text;

                var profileModel =
                    ProfileModel(firstName: firstname, lastName: lastname, email: email);

                var find = Get.find<WiiDrawerController>();
                find.setProfileModel(profileModel);

                profile["firstname"] = firstname;
                profile["lastname"] = lastname;
                profile["email"] = email;

                NetworkManager.sendPostProfiles(jsonEncode(profile));

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
