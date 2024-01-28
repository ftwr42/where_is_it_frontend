import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/generated/assets.dart';

class FastElementController extends RxController {
  Rx<Image> _image = Image.asset(
    Assets.imagesPlaceholder,
    width: 200,
    height: 200,
  ).obs;
  Image get getFile => _image.value;
  Rx<Image> get getRX => _image;

  void change(String file) {
    _image = Image.asset(
      file,
      width: 200,
      height: 200,
    ).obs;
    _image.refresh();
  }
}
