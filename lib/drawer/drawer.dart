import 'package:flutter/material.dart';

class WiiDrawer extends StatelessWidget {
  const WiiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
