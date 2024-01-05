import 'package:flutter/material.dart';

List<Map<String, dynamic>> elements = [
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
    'name': 'Hund',
    'color': Colors.redAccent
  },
  {
    'image': AssetImage('assets/images/237-536x354.jpg'),
    'type': 'item',
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
    'type': 'item',
    'name': 'Hund',
    'color': Colors.amberAccent
  },
];

class ElementsGrid extends StatelessWidget {
  const ElementsGrid({super.key});

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

      return Container(
        color: element['color'],
        width: 50,
        height: 50,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Hero(
                tag: "dr",
                child: Container(
                    color: Colors.white,
                    child: Image(
                      image: element['image'],
                    )
                    // child: Image.asset("resources/cupboard_default.png")
                    ),
              ),
            ),
          ),
        )),
      );
    }, childCount: elements.length);

    return SliverGrid(delegate: delegate, gridDelegate: gridDelegate);
  }
}
