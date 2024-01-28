import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';
import 'package:where_is_it/profile/profile_state.dart';
import 'package:where_is_it/store/store_properties_state.dart';

import '../pages.dart';

class DrawerView extends GetView<ProfileState> {
  DrawerView({super.key});

  static final List<Map<String, dynamic>> menuList = [
    {'leading': Icon(Icons.home), 'title': "Start View", 'route': WiiPages.EXPLORERVIEW},
    {'leading': Icon(Icons.add_circle_outline), 'title': "Item View", 'route': WiiPages.ITEMVIEW},
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Container View",
      'route': WiiPages.CONTAINERVIEW
    },
    {'leading': Icon(Icons.add_circle_outline), 'title': "Login View", 'route': WiiPages.LOGINVIEW},
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Example Transition",
      'route': WiiPages.EXAMPLETRANSITION
    },
    {
      'leading': Icon(Icons.exit_to_app_rounded),
      'title': "Example",
      'route': WiiPages.CURRENTEXAMPLE
    },
    {
      'leading': Icon(Icons.network_wifi_2_bar_outlined),
      'title': "Network Examples",
      'route': WiiPages.NETWORKEXAMPLE
    },
  ];

  static final List settingsList = [
    {'leading': Icon(Icons.login), 'title': "Login", 'route': WiiPages.LOGINVIEW},
    {'leading': Icon(Icons.settings), 'title': "Settings", 'route': WiiPages.ITEMVIEW},
  ];

  @override
  Widget build(BuildContext context) {
    // var state = Singleton.root?.getState('drawer');

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    var state = ProfileState();

    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Stack(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/237-536x354.jpg'),
                    radius: 50,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  var navigateTo =
                      WiiPages.navigateTo(context, WiiPages.USERVIEW, WiiPages.DIRECTION_ZOOMBIG);
                  Navigator.push(context, navigateTo);
                },
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.switch_account),
                  ),
                ),
              ),
            ],
          ),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${state.firstName} ${state.lastName} ${controller.hasChanged.string}',
                  style: WiiTextStyles.credentials_name_style(),
                ),
                Text(
                  '${state.email}',
                  style: WiiTextStyles.credentials_name_style(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    var state = StoreState();

    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 16,
        children: [
          Column(
            children: menuList.map((e) => drawerItem(context, e)).toList(),
          ),
          Divider(),
          Column(
            children: state.stores.map((e) => drawerItem(context, e)).toList(),
          ),
          Divider(),
          Column(
            children: settingsList.map((e) => drawerItem(context, e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget drawerItem(BuildContext context, Map<String, dynamic> item) => ListTile(
        leading: item['leading'],
        title: Text(item['title']),
        onTap: () {
          var navigateTo =
              WiiPages.navigateTo(context, WiiPages.NETWORKEXAMPLE, WiiPages.DIRECTION_LEFT);
          Navigator.push(context, navigateTo);
        },
      );
}
