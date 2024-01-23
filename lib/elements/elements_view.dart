import 'package:flutter/material.dart';

import '../aa_assets/styles/text.dart';

class ElementsView extends StatelessWidget {
  const ElementsView({super.key});

  @override
  Widget build(BuildContext context) {
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
            style: WiiTextStyles.header1Style(),
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
                        onPressed: () {},
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
            'assets/images/237-536x354.jpg',
            width: 536 / 2,
            height: 354 / 2,
          ),
        ),
      );

  Widget itemProperties() => Container(
        child: Column(
          children: [
            inputField("Item Name"),
            inputField("Item Description"),
            inputField("Item counts"),
          ],
        ),
      );

  Widget itemDescription() => Container(
        child: TextField(
          maxLines: null, // Setzen Sie maxLines auf null für mehrere Zeilen
          keyboardType:
              TextInputType.multiline, // Erlaubt Eingabe von mehreren Zeilen
          decoration: InputDecoration(
            hintText: 'Geben Sie hier Ihre Beschreibung ein...',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget inputField(String label) => Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Textfeld
              Expanded(
                child: TextField(
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
