import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';

class SearchBarView extends GetView<ExplorerController> {
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
              var getGridElements = controller.getGridElementSaved;
              var gridElements = controller.getGridElements;
              if (value == "" || value == " ") {
                gridElements.removeRange(0, gridElements.length);
                gridElements.addAll(getGridElements);
              } else {
                gridElements.removeRange(0, gridElements.length);
                getGridElements.forEach((element) {
                  if (element.name.toLowerCase().startsWith(value.toLowerCase()))
                    gridElements.add(element);
                });
              }
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
