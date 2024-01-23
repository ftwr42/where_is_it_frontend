import 'package:get/get.dart';

class UserModel extends GetxController {
  var hasChanged = false.obs;

  String name = "";
  String description = "";
  String email = "";
  int age = 0;
  int key = 0;
}
