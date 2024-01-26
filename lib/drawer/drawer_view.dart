import 'package:flutter/material.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';

import '../routing/routing.dart';
import 'drawer_config.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
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
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/237-536x354.jpg'),
            radius: 50,
          ),
          credentialText(DrawerConfig.credentialList[0],
              WiiTextStyles.credentials_name_style()),
          credentialText(DrawerConfig.credentialList[1],
              WiiTextStyles.credentials_email_style()),
        ],
      ),
    );
  }

  Widget buildMenuItems() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 16,
        children: [
          Column(
            children: DrawerConfig.menuList.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children: DrawerConfig.shopList.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children:
                DrawerConfig.settingsList.map((e) => drawerItem(e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget drawerItem(Map<String, dynamic> item) => ListTile(
        leading: item['leading'],
        title: Text(item['title']),
        onTap: () {
          var navigateTo = Routing.navigateTo(
              context, Routing.NETWORKEXAMPLE, Routing.DIRECTION_LEFT);
          Navigator.push(context, navigateTo);
        },
      );

  Widget credentialText(Map<String, dynamic> item, TextStyle textStyle) => Text(
        item['text'],
        style: textStyle,
      );
}
