import 'package:flutter/material.dart';
import 'package:where_is_it/store/explorer/explorer_state.dart';
import 'package:where_is_it/store/explorer/explorer_view.dart';
import 'package:where_is_it/store/search/searchbar_view.dart';

class StoreView extends StatelessWidget {
  StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    var elements = ExplorerState().elements;

    return CustomScrollView(
      slivers: [
        SearchBarView(),
        ExplorerView(),
      ],
    );
  }
}
