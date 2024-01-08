import 'package:flutter/material.dart';
import 'package:where_is_it/explorer/explorer_view.dart';
import 'package:where_is_it/routing/routing.dart';

void main() {
  runApp(WiiApp());
}

class WiiApp extends StatelessWidget {
  WiiApp({super.key});

  final searchText = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ExplorerView(),
      routes: Routing.routes(context),
    );
  }
}
