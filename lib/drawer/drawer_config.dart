import 'package:flutter/material.dart';

import '../routing/routing.dart';

class DrawerConfig {
  static final List credentialList = [
    {
      'text': "Jan Freirich",
    },
    {
      'text': "JanFreirich@gmail.com",
    },
  ];

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
  ];

  static final List shopList = [
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
