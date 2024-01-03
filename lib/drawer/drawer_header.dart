import 'package:flutter/material.dart';

class WiiDrawerHeader extends StatelessWidget {
  const WiiDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: 230,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        image(),
        credentials(),
      ],
    ));
  }

  Widget image() {
    return ClipOval(
      child: Icon(
        Icons.photo_camera,
        size: 100,
      ),
    );
  }

  Widget credentials() {
    return Column(
      children: [
        Text("JanFreirich@gmail.com"),
        Text("Jan Freirich"),
      ],
    );
  }
}
