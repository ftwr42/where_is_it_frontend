import 'package:flutter/material.dart';

class WiiDrawer extends StatefulWidget {
  final List credentialList = [
    {
      'text': "Jan Freirich",
      'style': const TextStyle(fontSize: 22, color: Colors.white60)
    },
    {
      'text': "JanFreirich@gmail.com",
      'style': const TextStyle(fontSize: 16, color: Colors.white60)
    },
  ];

  final List menuList = [
    {'leading': Icon(Icons.home), 'title': "Home", 'route': ""},
  ];

  final List shopList = [
    {'leading': Icon(Icons.shop), 'title': "Shop A", 'route': ""},
    {'leading': Icon(Icons.store), 'title': "Store A", 'route': ""},
    {'leading': Icon(Icons.storefront), 'title': "Store B", 'route': ""},
  ];

  final List settingsList = [
    {'leading': Icon(Icons.login), 'title': "Login", 'route': ""},
    {'leading': Icon(Icons.settings), 'title': "Settings", 'route': ""},
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
          credentialText(widget.credentialList[0]),
          credentialText(widget.credentialList[1]),
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
          // Navigator.push(context, item['route']);
        },
      );

  Widget credentialText(Map<String, dynamic> item) => Text(
        item['text'],
        style: item['style'],
      );
}
