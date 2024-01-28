import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/drawer/drawer_controller.dart';
import 'package:where_is_it/home_page.dart';
import 'package:where_is_it/pages.dart';

void main() {
  Get.put(WiiDrawerController());
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
