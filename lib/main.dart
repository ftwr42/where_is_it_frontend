import 'package:flutter/material.dart';
import 'package:where_is_it/navigation/routing.dart';
import 'package:where_is_it/startview/start_view.dart';

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
      home: StartView(),
      routes: Routing.routes(context),
    );
  }
}
