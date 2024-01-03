import 'package:flutter/material.dart';

class WiiDrawer extends StatelessWidget {
  const WiiDrawer({super.key});

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
      child: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/237-536x354.jpg'),
            radius: 50,
          ),
          Text(
            "Jan Freirich",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white60,
            ),
          ),
          Text(
            "JanFreirich@gmail.com",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white60,
            ),
          ),
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
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.store),
            title: Text("Store A"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.storefront),
            title: Text("Store B"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.local_convenience_store_sharp),
            title: Text("Store C"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Login"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new_outlined),
            title: Text("Credentials"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
