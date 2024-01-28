import 'package:flutter/material.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';

class GridContainerView extends StatefulWidget {
  late Map<String, dynamic> element;

  GridContainerView(this.element, {super.key});

  @override
  State<GridContainerView> createState() => _GridContainerViewState();
}

class _GridContainerViewState extends State<GridContainerView> {
  Map<String, dynamic> element = {
    'color': Colors.lightGreen,
    'type': "container",
    'name': "Doggy",
    'short_description': "A small super sweet Doggy",
    'image': AssetImage('assets/images/hund_schwarz.jpg'),
  };

  // @override
  // void setState(VoidCallback fn) {
  //   element = (widget.element == null) ? element : widget.element;
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(alignment: Alignment.topLeft, child: Icon(Icons.add_circle_outline)),
      Column(
        children: [
          Container(
            // height: 150,

            child: Center(
              child: Text(
                "Container",
                style: ProjectTextStyles.header1Style(),
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
