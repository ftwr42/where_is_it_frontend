import 'package:flutter/material.dart';
import 'package:where_is_it/assets/styles/text.dart';

import '../routing/routing.dart';

List<Map<String, dynamic>> elements = [
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
    'name': 'Hund',
    'color': Colors.redAccent
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'container',
    'name': 'Hund',
    'color': Colors.brown
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
    'name': 'Hund',
    'color': Colors.orange
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
    'name': 'Hund',
    'color': Colors.lightGreen
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
    'name': 'Hund',
    'color': Colors.lightBlueAccent
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'container',
    'name': 'Hund',
    'color': Colors.amberAccent
  },
];

class ExplorerGrid extends StatelessWidget {
  const ExplorerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    var gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
    );

    var delegate =
        SliverChildBuilderDelegate((BuildContext context, int index) {
      var element = elements[index];

      return GestureDetector(
        onLongPress: () {
          var navigateTo = Routing.navigateTo(
              context, Routing.ITEMVIEW, Routing.DIRECTION_TOP);
          Navigator.push(context, navigateTo);
        },
        onTap: () {
          var navigateTo = Routing.navigateTo(
              context, Routing.EXPLORERVIEW, Routing.DIRECTION_RIGHT);
          Navigator.push(context, navigateTo);
        },
        child: Column(
          children: [
            Container(
              child: Center(
                  child: (element['type'] == 'container'
                      ? Text(
                          "Container",
                          style: WiiTextStyles.header1Style(),
                        )
                      : Text(
                          "Item",
                          style: WiiTextStyles.header1Style(),
                        ))),
            ),
            Container(
              color: element['color'],
              width: 50,
              height: 50,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                      color: Colors.white,
                      child: Image(
                        image: element['image'],
                      )
                      // child: Image.asset("resources/cupboard_default.png")
                      ),
                ),
              )),
            ),
          ],
        ),
      );
    }, childCount: elements.length);

    return SliverGrid(delegate: delegate, gridDelegate: gridDelegate);
  }
}
