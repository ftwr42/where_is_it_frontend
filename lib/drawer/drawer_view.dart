import 'package:flutter/material.dart';
import 'package:where_is_it/assets/styles/text.dart';

import 'drawer_controller.dart';
import 'drawer_model.dart';

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
          credentialText(DrawerModel.credentialList[0],
              WiiTextStyles.credentials_name_style()),
          credentialText(DrawerModel.credentialList[1],
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
            children: DrawerModel.menuList.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children: DrawerModel.shopList.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children:
                DrawerModel.settingsList.map((e) => drawerItem(e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget drawerItem(Map<String, dynamic> item) => ListTile(
        leading: item['leading'],
        title: Text(item['title']),
        onTap: () {
          WiiDrawerController.pushNamed(context, item['route']);
        },
      );

  Widget credentialText(Map<String, dynamic> item, TextStyle textStyle) => Text(
        item['text'],
        style: textStyle,
      );
}
