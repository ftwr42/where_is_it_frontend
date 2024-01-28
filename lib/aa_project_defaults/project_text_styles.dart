import 'package:flutter/material.dart';

class ProjectTextStyles {
  static header1Style() {
    return const TextStyle(
        color: Color(0x181849D8), fontSize: 32, fontStyle: FontStyle.normal, fontFamily: 'Roboto');
  }

  static header2Style() {
    return const TextStyle(
        color: Color(0x181849D8), fontSize: 22, fontStyle: FontStyle.normal, fontFamily: 'Roboto');
  }

  static header3Style() {
    return const TextStyle(
        color: Color(0x181849D8), fontSize: 16, fontStyle: FontStyle.normal, fontFamily: 'Roboto');
  }

  static credentials_name_style() {
    return const TextStyle(fontSize: 22, color: Colors.white60);
  }

  static credentials_email_style() {
    return const TextStyle(fontSize: 16, color: Colors.white60);
  }
}
