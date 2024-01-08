import 'dart:ui';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return SecondScreen();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = 0.0;
                const end = 1.0;
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                var offsetAnimation = animation.drive(tween);

                return Stack(
                  children: [
                    FirstScreen(),
                    Positioned(
                      top: offsetAnimation.value *
                          MediaQuery.of(context).size.height,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.black.withOpacity(0.3),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Positioned(
                      top: offsetAnimation.value *
                          MediaQuery.of(context).size.height,
                      child: child,
                    ),
                  ],
                );
              },
            ),
          );
        },
        child: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.android,
            size: 100.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text("Hello"),
        ),
      ),
    );
  }
}
