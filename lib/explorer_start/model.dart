import 'package:flutter/material.dart';

class Model {
  ImageProvider image;

  Color? color = Colors.blue;

  String? name = "Name";

  String? subtitle = "subtitle";

  String? tag = "";

  Model({required this.image, this.color, this.name, this.subtitle, this.tag});
}
