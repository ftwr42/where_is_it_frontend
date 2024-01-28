import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:where_is_it/pages.dart';
import 'package:where_is_it/zz_state/stateif.dart';

class DrawerState extends StateIF {
  // knows nothing because Profile State and Store State know everything it should know if it is open or close
  RxBool isOpen = false.obs;

  static final RxList storeList = [
    {'leading': Icon(Icons.shop), 'title': "Shop A", 'route': WiiPages.ITEMVIEW},
    {'leading': Icon(Icons.store), 'title': "Store A", 'route': WiiPages.ITEMVIEW},
    {'leading': Icon(Icons.storefront), 'title': "Store B", 'route': WiiPages.ITEMVIEW},
  ].obs;

  static final List settingsList = [
    {'leading': Icon(Icons.login), 'title': "Login", 'route': WiiPages.LOGINVIEW},
    {'leading': Icon(Icons.settings), 'title': "Settings", 'route': WiiPages.ITEMVIEW},
  ];
}
