import 'package:flutter/material.dart';

import 'elements_grid.dart';

class ElementsView extends StatelessWidget {
  const ElementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        //SliverList.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder)
        //SliverToBoxAdapter(child: HistoryNavigator(),),
        ElementsGrid(),
      ],
    );
  }
}
