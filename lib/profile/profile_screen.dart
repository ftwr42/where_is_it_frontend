import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Details"),
            ),
          ],
        ),
      ),
    );
  }

  Widget properties(String name) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ProjectTextFields.nameField(name),
    );
  }
}
