import 'dart:io';

import 'package:flutter/material.dart';

import '../routing/routing.dart';

class DrawerModel {
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

  String id;
  String name = "Jan";
  String lastname = "Freirich";
  String email = "JanFreirich@gmail.com";
  File profileImage = File('assets/images/237-536x354.jpg');

  DrawerModel(
      {required this.id,
      required this.name,
      required this.lastname,
      required this.email,
      required this.profileImage});

  factory DrawerModel.fromJson(Map<String, dynamic> json) {
    return DrawerModel(
        id: json["id"],
        name: json["name"],
        lastname: json['lastname'],
        email: json["email"],
        profileImage: json[""]);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastname': lastname,
      'email': email,
      // 'profileImage': profileImage,
    };
  }
}
