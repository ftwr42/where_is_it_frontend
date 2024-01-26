import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/textfields.dart';
import 'package:where_is_it/profile/user_config.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UserConfig.TITLE,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: UserConfig.PROFILE_DETAILS,
            ),
          ],
        ),
      ),
    );
  }

  Widget properties(String name) {
    return Padding(
      padding: EdgeInsets.all(UserConfig.PROPERTIES_PATTERN),
      child: ProjectTextFields.nameField(name),
    );
  }
}
