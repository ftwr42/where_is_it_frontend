import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:where_is_it/home_page.dart';
import 'package:where_is_it/pages.dart';

void main() {
  runApp(WiiApp());
}

class WiiApp extends StatelessWidget {
  WiiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: root.theme,
      home: HomePage(),
      getPages: WiiPages.getPages(),
    );
  }
}
