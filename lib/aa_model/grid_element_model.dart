import 'package:flutter/material.dart';

class GridElementModel {
  String type;
  String name;
  String isinid;
  String shortDescription;
  late AssetImage image;

  GridElementModel(String imagePath,
      {this.type = "", this.name = "", this.isinid = "", this.shortDescription = ""}) {
    image = AssetImage(imagePath);
  }
}
