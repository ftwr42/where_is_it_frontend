import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'fab_view.dart';


class WiiFab extends StatelessWidget {
  const WiiFab({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(
      children: [
        FloatingActionButton.small(
          heroTag: null,
          child: const Icon(Icons.edit),
          onPressed: () {},
        ),
        FloatingActionButton.small(
          heroTag: null,
          child: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}



