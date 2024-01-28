import 'package:flutter/material.dart';

class GridElementModel {
  String type;
  String name;
  String shortDescription;
  late AssetImage image;

  GridElementModel(String imagePath,
      {required this.type, required this.name, required this.shortDescription}) {
    image = AssetImage(imagePath);
  }
}
