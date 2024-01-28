import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/zz_state/stateif.dart';

class ProfileState extends StateIF {
  var hasChanged = false.obs;

  String firstName = "name";
  String lastName = "lastname";
  String email = "yourname(at)wiimail.com";

  TextEditingController textEditingControllerFirstname = TextEditingController();
  TextEditingController textEditingControllerLastname = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();

  void change() {
    firstName = textEditingControllerFirstname.text;
    lastName = textEditingControllerLastname.text;
    email = textEditingControllerEmail.text;

    hasChanged.value != hasChanged.value;
  }
}
