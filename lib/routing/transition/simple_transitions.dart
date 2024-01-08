import 'package:flutter/material.dart';

class SimpleTransitions {
  static SlideTransition slideRightTransition(context, animation, child) {
    const begin = Offset(1.0, 0.0); //right
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static SlideTransition slideLeftTransition(context, animation, child) {
    const begin = Offset(-1.0, 0.0); //left
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static SlideTransition slideTopTransition(context, animation, child) {
    const begin = Offset(0.0, 1.0); //top
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static SlideTransition slideBotTransition(context, animation, child) {
    const begin = Offset(0.0, -1.0); //top
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
