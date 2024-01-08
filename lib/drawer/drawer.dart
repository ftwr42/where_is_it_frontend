import 'package:flutter/material.dart';
import 'package:where_is_it/assets/styles/text.dart';

import '../routing/routing.dart';

class WiiDrawer extends StatefulWidget {
  final List credentialList = [
    {
      'text': "Jan Freirich",
    },
    {
      'text': "JanFreirich@gmail.com",
    },
  ];

  final List menuList = [
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

  final List shopList = [
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

  final List settingsList = [
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

  WiiDrawer({super.key});

  @override
  State<WiiDrawer> createState() => _WiiDrawerState();
}

class _WiiDrawerState extends State<WiiDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(),
            buildMenuItems(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/237-536x354.jpg'),
            radius: 50,
          ),
          credentialText(
              widget.credentialList[0], WiiTextStyles.credentials_name_style()),
          credentialText(widget.credentialList[1],
              WiiTextStyles.credentials_email_style()),
        ],
      ),
    );
  }

  Widget buildMenuItems() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 4,
        children: [
          drawerItem(widget.menuList[0]),
          drawerItem(widget.menuList[1]),
          drawerItem(widget.menuList[2]),
          drawerItem(widget.menuList[3]),
          drawerItem(widget.menuList[4]),
          drawerItem(widget.menuList[5]),
          Divider(),
          drawerItem(widget.shopList[0]),
          drawerItem(widget.shopList[1]),
          drawerItem(widget.shopList[2]),
          Divider(),
          drawerItem(widget.settingsList[0]),
          drawerItem(widget.settingsList[1]),
        ],
      ),
    );
  }

  Widget drawerItem(Map<String, dynamic> item) => ListTile(
        leading: item['leading'],
        title: Text(item['title']),
        onTap: () {
          Navigator.pushNamed(context, item['route']);
        },
      );

  Widget credentialText(Map<String, dynamic> item, TextStyle textStyle) => Text(
        item['text'],
        style: textStyle,
      );
}
