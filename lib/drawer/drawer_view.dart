import 'package:flutter/material.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';
import 'package:where_is_it/drawer/drawer_state.dart';
import 'package:where_is_it/profile/profile_state.dart';
import 'package:where_is_it/singleton.dart';
import 'package:where_is_it/store/store_state.dart';
import 'package:where_is_it/zz_stateholder/state_holder.dart';

import '../routing/routing.dart';

class DrawerView extends StatefulWidget {
  DrawerView({super.key}) {
    Singleton.getInstance();
    var root = Singleton.root;
    root?.addChild(StateHolder<DrawerState>(DrawerState(), nodeName: 'drawer'));
    root?.addChild(StateHolder<ProfileState>(ProfileState(), nodeName: 'profile'));
    root?.addChild(StateHolder<StoreState>(StoreState(), nodeName: 'store'));
  }

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  static final List<Map<String, dynamic>> menuList = [
    {'leading': Icon(Icons.home), 'title': "Start View", 'route': Routing.EXPLORERVIEW},
    {'leading': Icon(Icons.add_circle_outline), 'title': "Item View", 'route': Routing.ITEMVIEW},
    {
      'leading': Icon(Icons.add_circle_outline),
      'title': "Container View",
      'route': Routing.CONTAINERVIEW
    },
    {'leading': Icon(Icons.add_circle_outline), 'title': "Login View", 'route': Routing.LOGINVIEW},
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
    {'leading': Icon(Icons.login), 'title': "Login", 'route': Routing.LOGINVIEW},
    {'leading': Icon(Icons.settings), 'title': "Settings", 'route': Routing.ITEMVIEW},
  ];

  @override
  Widget build(BuildContext context) {
    // var state = Singleton.root?.getState('drawer');

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
    var state = Singleton.root?.getState('profile') as ProfileState;

    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/237-536x354.jpg'),
                    radius: 50,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  var navigateTo =
                      Routing.navigateTo(context, Routing.USERVIEW, Routing.DIRECTION_ZOOMBIG);
                  Navigator.push(context, navigateTo);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.switch_account),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${state.firstName} ${state.lastName}',
                style: WiiTextStyles.credentials_name_style(),
              ),
              Text(
                '${state.email}',
                style: WiiTextStyles.credentials_name_style(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuItems() {
    var state = Singleton.root?.getState('store') as StoreState;

    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 16,
        children: [
          Column(
            children: menuList.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children: state.stores.map((e) => drawerItem(e)).toList(),
          ),
          Divider(),
          Column(
            children: settingsList.map((e) => drawerItem(e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget drawerItem(Map<String, dynamic> item) => ListTile(
        leading: item['leading'],
        title: Text(item['title']),
        onTap: () {
          var navigateTo =
              Routing.navigateTo(context, Routing.NETWORKEXAMPLE, Routing.DIRECTION_LEFT);
          Navigator.push(context, navigateTo);
        },
      );
}
