import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/textfields.dart';
import 'package:where_is_it/profile/profile_state.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ProfileState.TITLE,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: ProfileState.PROFILE_DETAILS,
            ),
          ],
        ),
      ),
    );
  }

  Widget properties(String name) {
    return Padding(
      padding: EdgeInsets.all(ProfileState.PROPERTIES_PATTERN),
      child: ProjectTextFields.nameField(name),
    );
  }
}
