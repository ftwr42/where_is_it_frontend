import 'package:flutter/material.dart';

class ElementsGrid extends StatelessWidget {
  const ElementsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [],
    );
    // return SliverGrid(delegate: delegate, gridDelegate: gridDelegate);
  }
}
