import 'package:flutter/material.dart';

import '../../pages.dart';

class TransitionExample extends StatelessWidget {
  const TransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ElevatedButton(
                onPressed: () {
                  var navigateTo = WiiPages.navigateTo(
                      context, WiiPages.EXAMPLETRANSITION, WiiPages.DIRECTION_TOP);
                  Navigator.of(context).push(navigateTo);
                },
                child: Text("TOP")),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  var navigateTo = WiiPages.navigateTo(
                      context, WiiPages.EXAMPLETRANSITION, WiiPages.DIRECTION_BOT);
                  Navigator.of(context).push(navigateTo);
                },
                child: Text("BOT")),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
                onPressed: () {
                  var navigateTo = WiiPages.navigateTo(
                      context, WiiPages.EXAMPLETRANSITION, WiiPages.DIRECTION_LEFT);
                  Navigator.of(context).push(navigateTo);
                },
                child: Text("LEFT")),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
                onPressed: () {
                  var navigateTo = WiiPages.navigateTo(
                      context, WiiPages.EXAMPLETRANSITION, WiiPages.DIRECTION_RIGHT);
                  Navigator.of(context).push(navigateTo);
                },
                child: Text("RIGHT")),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  var navigateTo =
                      WiiPages.navigateTo(context, WiiPages.EXPLORERVIEW, WiiPages.DIRECTION_LEFT);
                  Navigator.of(context).push(navigateTo);
                },
                child: Text("BACK")),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {
                var navigateTo = WiiPages.navigateTo(
                  context,
                  WiiPages.EXAMPLETRANSITION,
                  WiiPages.DIRECTION_ZOOMBIG, // Use the new animation type
                );
                Navigator.of(context).push(navigateTo);
              },
              child: Text("ZOOM BIG"),
            ),
          ),
        ],
      ),
    );
  }
}
