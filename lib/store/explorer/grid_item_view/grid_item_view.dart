import 'package:flutter/material.dart';
import 'package:where_is_it/aa_assets/styles/text.dart';

class GridItemView extends StatefulWidget {
  late Map<String, dynamic> element;

  GridItemView(this.element, {super.key});

  @override
  State<GridItemView> createState() => _GridItemViewState();
}

class _GridItemViewState extends State<GridItemView> {
  Map<String, dynamic> element = {
    'color': Colors.lightGreen,
    'type': "container",
    'name': "Doggy",
    'short_description': "A small super sweet Doggy",
    'image': AssetImage('assets/images/237-536x354.jpg'),
  };

  // @override
  // void setState(VoidCallback fn) {
  //   element = (widget.element == null) ? element : widget.element;
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(alignment: Alignment.topLeft, child: Icon(Icons.ac_unit_sharp)),
      Column(
        children: [
          Container(
            // height: 150,
            // color: Colors.amberAccent,
            child: Center(
              child: Text(
                "Item",
                style: WiiTextStyles.header1Style(),
              ),
            ),
          ),
          Container(
            color: element['color'],
            width: double.infinity,
            // height: 100,
            child: Center(
                child: Expanded(
              child: Stack(
                children: [
                  Text(element["name"]),
                  Text(element["short_description"]),
                  Container(
                      color: Colors.white,
                      child: Expanded(
                        child: Image(
                          // height: 100,
                          image: element['image'],
                        ),
                      )
                      // child: Image.asset("resources/cupboard_default.png")
                      ),
                ],
              ),
            )),
          ),
        ],
      ),
    ]);
  }
}
