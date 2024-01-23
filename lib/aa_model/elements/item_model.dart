import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_assets/project_images.dart';

class ItemModel extends GetxController {
  var hasChanged = false.obs;

  int key = 0;
  String name = "";
  String description = "";
  int amount = 0;
  ImageProvider image = ProjectImages.defaultItem;
  int group = 0;

  List<ItemModel> history = [];
}
