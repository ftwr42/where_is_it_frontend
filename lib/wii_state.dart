import 'package:flutter/material.dart';
import 'package:where_is_it/zz_stateholder/stateif.dart';

class WiiState extends StateIF {
  final String APPVERSION = "0.0.1";

  var theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}
