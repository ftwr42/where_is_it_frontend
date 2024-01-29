import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/generated/assets.dart';

class FastElementController extends RxController {
  Rx<Image> _image = Image.asset(
    Assets.imagesPlaceholder,
    width: 200,
    height: 200,
  ).obs;
  Image get getImageWidget => _image.value;

  void change(String file) {
    var file2 = File(file);
    _image = Image.file(
      file2,
      width: 200,
      height: 200,
    ).obs;
  }
}
