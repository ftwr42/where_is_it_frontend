import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_model/store_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/drawer/drawer_controller.dart';
import 'package:where_is_it/store/store_page.dart';

import '../pages.dart';

class DrawerView extends GetView<WiiDrawerController> {
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
                    backgroundImage: AssetImage('assets/images/hund_schwarz.jpg'),
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
                  '${controller.getProfileModel.firstName} ${controller.getProfileModel.lastName}',
                  style: ProjectTextStyles.credentials_name_style(),
                ),
                Text(
                  '${controller.getProfileModel.email}',
                  style: ProjectTextStyles.credentials_name_style(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var counter = 0;

  Widget buildMenuItems(BuildContext context) {
    var storex = Obx(() {
      var stores = controller.getStores;
      Iterator<StoreModel> getStores = stores.iterator;
      List<Widget> s = <Widget>[];
      for (int i = 0; i < stores.length; ++i) {
        getStores.moveNext();
        var current = getStores.current;
        var item;
        if (controller.activeStore == current.id) {
          item = storeItem(context, current, true);
        } else {
          item = storeItem(context, current, false);
        }
        s.add(item);
      }

      return Column(
        children: s,
      );
    });

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
            children: [
              storex,
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(StorePage(model: StoreModel()));
                  },
                  child: Center(child: Icon(Icons.add_circle_outline)),
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: settingsList.map((e) => drawerItem(context, e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget storeItem(BuildContext context, StoreModel model, bool active) => Container(
        color: active ? Colors.lightBlueAccent : null,
        child: ListTile(
          leading: Icon(Icons.store),
          trailing: GestureDetector(
              onTap: () {
                Get.to(StorePage(model: model));
              },
              child: Icon(Icons.edit)),
          title: Text(model.name),
          subtitle: Text(model.shortDescription),
          onTap: () {
            controller.activeStore.value = model.id;
          },
        ),
      );

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
