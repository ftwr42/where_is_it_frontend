import 'package:flutter/material.dart';
import 'package:where_is_it/loginview/login_view.dart';
import 'package:where_is_it/startview/start_view.dart';

import '../example/current_example.dart';
import '../explorer_elements/containerview/containerview.dart';
import '../explorer_elements/itemview/itemview.dart';
import 'transition/transition_example.dart';

class Routing {
  static const String USERVIEW = "userview";
  static const String ITEMVIEW = "itemview";
  static const String CONTAINERVIEW = "containerview";
  static const String STARTVIEW = "startview";
  static const String LOGINVIEW = "loginview";
  static const String EXAMPLETRANSITION = "exampletransition";
  static const String CURRENTEXAMPLE = "currentexample";
  static const String CURRENTEXAMPLE2 = "currentexample2";
  static const String EXPLORER_NEXT = "explorer_next";
  static const String EXPLORER = "explorer_next";

  static const String DIRECTION_NONE = "none";
  static const String DIRECTION_TOP = "direction_top";
  static const String DIRECTION_BOT = "direction_bot";
  static const String DIRECTION_LEFT = "direction_left";
  static const String DIRECTION_RIGHT = "direction_right";

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return <String, WidgetBuilder>{
      STARTVIEW: (context) => const StartView(),
      ITEMVIEW: (context) => const ItemView(),
      CONTAINERVIEW: (context) => const ContainerView(),
      LOGINVIEW: (context) => const LoginView(),
      EXAMPLETRANSITION: (context) => const TransitionExample(),
      CURRENTEXAMPLE: (context) => FirstScreen(),
      CURRENTEXAMPLE2: (context) => SecondScreen(),
      EXPLORER: (context) => SecondScreen(),
      EXPLORER_NEXT: (context) => SecondScreen(),
    };
  }

  static PageRouteBuilder navigateTo(
    BuildContext context,
    String to,
    String transitionType,
  ) {
    var transition;

    switch (transitionType) {
      case DIRECTION_TOP:
        {
          transition = (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); //top
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          };
        }
        break;
      case DIRECTION_BOT:
        {
          transition = (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, -1.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          };
        }
        break;
      case DIRECTION_LEFT:
        {
          transition = (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          };
        }
        break;
      case DIRECTION_RIGHT:
        {
          transition = (context, animation, secondaryAnimation, child) {
            const begin = Offset(-1.0, 0.0); //right
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          };
        }
        break;
      case DIRECTION_NONE:
      default:
        {
          transition = null;
        }
        break;
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          _getWidget(context, to),
      transitionsBuilder: transition,
    );
  }

  static _getWidget(BuildContext context, String transitions) {
    return routes(context)[transitions]!(context);
  }
}
