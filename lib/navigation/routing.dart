import 'package:flutter/material.dart';
import 'package:where_is_it/loginview/login_view.dart';
import 'package:where_is_it/startview/start_view.dart';

import '../elementviews/containerview/containerview.dart';
import '../elementviews/itemview/itemview.dart';

class Routing {
  static const String USERVIEW = "userview";
  static const String ITEMVIEW = "itemview";
  static const String CONTAINERVIEW = "containerview";
  static const String STARTVIEW = "startview";
  static const String LOGINVIEW = "loginview";

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return <String, WidgetBuilder>{
      STARTVIEW: (context) => const StartView(),
      ITEMVIEW: (context) => const ItemView(),
      CONTAINERVIEW: (context) => const ContainerView(),
      LOGINVIEW: (context) => const LoginView(),
      // SEARCH_FIELD: (context) => const SearchFieldView(),
      // FAB: (context) => const FabView(),
      // LOGIN: (context) => const LoginView(),
      // SIMPLE_GET_REQUEST: (context) => const SimpleGetRequestView(),
      // SLIDER_DRAWER: (context) => const DrawerView(),
      // SLIDER_DRAWER_TEST: (context) => const SliverDrawerTestView(),
      // SAMIRA: (context) => const SamiraExample(),
      // FIRST_ANIMATION: (context) => const FirstAnimation(),
      // HERO_SECOND_VIEW: (context) => const HeroSecondView(),
      // TRANSITIONS: (context) => const TransitionsView(),
    };
  }

  static getWidget(BuildContext context, String transitions) {
    return routes(context)[transitions]!(context);
  }
}
