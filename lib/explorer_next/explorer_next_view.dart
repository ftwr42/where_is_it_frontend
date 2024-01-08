import 'package:flutter/material.dart';
import 'package:where_is_it/explorer_start/elements_grid.dart';

class ExplorerNextView extends StatelessWidget {
  const ExplorerNextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ElementsGrid(),
        ],
      ),
    );
  }
}
