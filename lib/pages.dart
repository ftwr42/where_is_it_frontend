import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/home_page.dart';
import 'package:where_is_it/aa_model/store_model.dart';
import 'package:where_is_it/loginview/login_view.dart';
import 'package:where_is_it/profile/profile_page.dart';
import 'package:where_is_it/store/store_page.dart';
import 'package:where_is_it/zz_networkmanager/network_example_screen.dart';

import 'example/current_example.dart';
import 'routing/example_view/transition_example.dart';

class WiiPages {
  static const String USERVIEW = "userview";
  static const String ITEMVIEW = "itemview";
  static const String CONTAINERVIEW = "containerview";
  static const String EXPLORERVIEW = "startview";
  static const String LOGINVIEW = "loginview";
  static const String EXAMPLETRANSITION = "exampletransition";
  static const String CURRENTEXAMPLE = "currentexample";
  static const String CURRENTEXAMPLE2 = "currentexample2";
  static const String NETWORKEXAMPLE = "networkexample";

  static const String DIRECTION_NONE = "none";
  static const String DIRECTION_TOP = "direction_top";
  static const String DIRECTION_BOT = "direction_bot";
  static const String DIRECTION_LEFT = "direction_left";
  static const String DIRECTION_RIGHT = "direction_right";
  static const String DIRECTION_ZOOMBIG = "direction_zoom_big";

  static const String FABDIALOG1 = "dialog1";
  static const String FABDIALOG2 = "dialog2";
  static const String FABDIALOG3 = "dialog3";

  static List<GetPage> getPages() {
    return [
      GetPage(name: '/', page: () => HomePage()),
      GetPage(name: '/profile', page: () => ProfilePage()),
      GetPage(
          name: '/store',
          page: () => StorePage(
                model: StoreModel(name: "", id: "", shortDescription: ""),
              )),
    ];
  }

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return <String, WidgetBuilder>{
      // EXPLORERVIEW: (context) => StoreView(),
      // ITEMVIEW: (context) => const ItemView(),
      // CONTAINERVIEW: (context) => const ContainerView(),
      LOGINVIEW: (context) => const LoginView(),
      EXAMPLETRANSITION: (context) => const TransitionExample(),
      CURRENTEXAMPLE: (context) => FirstScreen(),
      CURRENTEXAMPLE2: (context) => SecondScreen(),
      NETWORKEXAMPLE: (context) => const NetworkExampleScreen(),
      // FABDIALOG1: (context) => FastItemCreator(context),
      // FABDIALOG2: (context) => FastItemCreator(context),
      // FABDIALOG3: (context) => FastItemCreator(context),
      USERVIEW: (context) => ProfilePage(),
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
      case DIRECTION_ZOOMBIG:
        {
          transition = (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeInOutBack;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return ScaleTransition(
              scale: tween.animate(curvedAnimation),
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
      pageBuilder: (context, animation, secondaryAnimation) => _getWidget(context, to),
      transitionsBuilder: transition,
      transitionDuration: const Duration(milliseconds: 600),
    );
  }

  static _getWidget(BuildContext context, String transitions) {
    return routes(context)[transitions]!(context);
  }
}
