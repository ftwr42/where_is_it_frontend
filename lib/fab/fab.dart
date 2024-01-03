import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'fab_view.dart';


/**class WiiFab extends StatelessWidget {
  const WiiFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      body: (),
    );
  }
}**/

class WiiFab extends StatelessWidget {
  final VoidCallback onPressed;

  const WiiFab({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}


