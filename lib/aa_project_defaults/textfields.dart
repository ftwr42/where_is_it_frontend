import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProjectTextFields {
  static Widget imageUpload(String string) {
    File? _image;

    Future getImage() async {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print(string);
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _image == null ? Text(string) : Image.file(_image!),
          ElevatedButton(
            onPressed: getImage,
            child: Text('PHOTOS'),
          ),
        ],
      ),
    );
  }

  static Widget textField(String name) {
    bool checkText = true;
    // Todo check name, if fail, return null

    return TextField(
      decoration: _inputDecorationForLogin(
        name,
        name,
        Icons.abc,
      ),
    );
  }

  static Widget nameField(String name) {
    bool checkname = true;
    // Todo check name, if fail, return null

    return TextField(
      decoration: _inputDecorationForLogin(
        name,
        name,
        Icons.abc,
      ),
    );
  }

  static Widget usernameField() {
    return TextField(
      // controller: widget.controller.passwordField,
      decoration:
          _inputDecorationForLogin("Username", "Username", Icons.person),
    );
  }

  static Widget passwordField() {
    return TextField(
      // controller: widget.controller.usernameField,
      decoration:
          _inputDecorationForLogin("Password", "Password", Icons.password),
    );
  }

  static InputDecoration _inputDecorationForLogin(
      String labelText, String hintText, IconData prefix) {
    return InputDecoration(
      labelText: labelText, // Placeholder text
      hintText: hintText,
      prefixIcon: Icon(prefix), // Icon before the text input
      suffixIcon: Icon(Icons.clear), // Icon after the text input
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Colors.black12,
      filled: true,
    );
  }
}
