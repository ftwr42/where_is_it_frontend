import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:where_is_it/routing/routing.dart';
import 'package:where_is_it/zz_stateholder/stateif.dart';

class DrawerState extends StateIF {
  // knows nothing because Profile State and Store State know everything it should know if it is open or close
  RxBool isOpen = false.obs;

  static final RxList shopList = [
    {'leading': Icon(Icons.shop), 'title': "Shop A", 'route': Routing.ITEMVIEW},
    {
      'leading': Icon(Icons.store),
      'title': "Store A",
      'route': Routing.ITEMVIEW
    },
    {
      'leading': Icon(Icons.storefront),
      'title': "Store B",
      'route': Routing.ITEMVIEW
    },
  ].obs;

  static final List<Map<String, dynamic>> menuList = [
    {
      'leading': Icon(Icons.home),
      'title': "Start View",
      'route': Routing.EXPLORERVIEW
    },
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Item View",
      'route': Routing.ITEMVIEW
    },
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Container View",
      'route': Routing.CONTAINERVIEW
    },
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Login View",
      'route': Routing.LOGINVIEW
    },
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Example Transition",
      'route': Routing.EXAMPLETRANSITION
    },
    {
      'leading': Icon(Icons.exit_to_app_rounded),
      'title': "Example",
      'route': Routing.CURRENTEXAMPLE
    },
    {
      'leading': Icon(Icons.network_wifi_2_bar_outlined),
      'title': "Network Examples",
      'route': Routing.NETWORKEXAMPLE
    },
  ];

  static final List settingsList = [
    {
      'leading': Icon(Icons.login),
      'title': "Login",
      'route': Routing.LOGINVIEW
    },
    {
      'leading': Icon(Icons.settings),
      'title': "Settings",
      'route': Routing.ITEMVIEW
    },
  ];
}
