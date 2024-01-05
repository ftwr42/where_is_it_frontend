import 'package:flutter/material.dart';

import 'elements_grid.dart';

class ElementsView extends StatelessWidget {
  const ElementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ElementsGrid(),
      ],
    );
  }
}
