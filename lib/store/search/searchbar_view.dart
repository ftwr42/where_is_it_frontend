import 'package:flutter/material.dart';

class SearchBarView extends StatefulWidget {
  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  @override
  Widget build(BuildContext context) {
    var textEditingController = TextEditingController();
    return SliverAppBar(
      iconTheme: null,
      primary: false,
      excludeHeaderSemantics: true,
      collapsedHeight: 70,
      floating: true,
      toolbarHeight: 0,
      expandedHeight: 50,
      flexibleSpace: Container(
        color: Color(0x00),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textEditingController,
            onChanged: (String value) {
              // widget.elements.forEach((element) {
              //   if (element.containsValue(value)) {}
              // });
            },
            decoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Enter search term',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
