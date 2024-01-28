import 'package:flutter/material.dart';
import 'package:where_is_it/pages.dart';
import 'package:where_is_it/zz_state/stateif.dart';

class StoreState extends StateIF {
  List<Map<String, dynamic>> stores = [
    {'leading': Icon(Icons.shop), 'title': "Shop A", 'route': WiiPages.ITEMVIEW},
    {'leading': Icon(Icons.store), 'title': "Store A", 'route': WiiPages.ITEMVIEW},
    {'leading': Icon(Icons.storefront), 'title': "Store B", 'route': WiiPages.ITEMVIEW},
  ];
}
