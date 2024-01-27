import 'package:flutter/material.dart';
import 'package:where_is_it/routing/routing.dart';
import 'package:where_is_it/zz_stateholder/stateif.dart';

class StoreState extends StateIF {
  List<Map<String, dynamic>> stores = [
    {'leading': Icon(Icons.shop), 'title': "Shop A", 'route': Routing.ITEMVIEW},
    {'leading': Icon(Icons.store), 'title': "Store A", 'route': Routing.ITEMVIEW},
    {'leading': Icon(Icons.storefront), 'title': "Store B", 'route': Routing.ITEMVIEW},
  ];
}
