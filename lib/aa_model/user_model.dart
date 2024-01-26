import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:get/get.dart';

class UserModel extends GetxController {
  var hasChanged = false.obs;

  String firstname = "Samira";
  String lastname = "Mueller";
  String email = "toast53@wii.com";
  String description = "Creative Software Developer";
  String privateKey = "sdfsdfsdfasakbfdhjsbafgdisabgiosnbgti";
  int age = 23;

  Digest getKey() {
    var p = '$firstname$lastname$email$description$age';
    var bytes = utf8.encode(p); // Daten in UTF-8 umwandeln
    var digest = sha256.convert(bytes); // SHA256 Hash erzeugen
    return digest;
  }
}
