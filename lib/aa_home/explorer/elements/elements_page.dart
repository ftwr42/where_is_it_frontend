import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/gridelements/grid_element_controller.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';

class ElementsPage extends GetView<GridElementController> {
  late GridElementModel model;
  var cName = TextEditingController();
  var cIsinid = TextEditingController();
  var cShortDescription = TextEditingController();
  late BuildContext context;
  ElementsPage({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            itemHeader(),
            itemImage(),
            itemProperties(),
            itemDescription(),
            itemControls(),
          ],
        ),
      ),
    );
  }

  Widget itemHeader() => SizedBox(
        height: 80,
        child: Center(
          child: Text(
            "Item View",
            style: ProjectTextStyles.header1Style(),
          ),
        ),
      );

  Widget itemControls() => Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('EDIT'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var find = Get.find<GridElementController>();
                          var model = find.getElementModel;

                          var name = cName.text;
                          var isinid = cIsinid.text;
                          var shortDescription = cShortDescription.text;
                          model.shortDescription = name;
                          model.isinid = isinid;
                          model.shortDescription = shortDescription;

                          find.change();

                          Navigator.of(context).pop();
                        },
                        child: Text('SAVE'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget itemImage() => Container(
        child: ClipOval(
          child: Image.asset(
            'assets/images/hund_schwarz.jpg',
            width: 536 / 2,
            height: 354 / 2,
          ),
        ),
      );

  Widget itemProperties() {
    var model = controller.getElementModel;
    return Container(
      child: Column(
        children: [
          inputField("${model.name}", cName),
          inputField("${model.isinid}", cIsinid),
          inputField("${model.shortDescription}", cShortDescription),
        ],
      ),
    );
  }

  Widget itemDescription() => Container(
        child: TextField(
          maxLines: null, // Setzen Sie maxLines auf null für mehrere Zeilen
          keyboardType: TextInputType.multiline, // Erlaubt Eingabe von mehreren Zeilen
          decoration: InputDecoration(
            hintText: 'Geben Sie hier Ihre Beschreibung ein...',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget inputField(String label, TextEditingController controller) => Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Textfeld
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: label,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
