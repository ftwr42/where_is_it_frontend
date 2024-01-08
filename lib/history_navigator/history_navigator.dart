import 'package:flutter/material.dart';

List<Map<String, dynamic>> elements = [
  {'text': 'Test 1', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 2', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 3', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 1', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 2', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 3', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 1', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 2', 'image': AssetImage('assets/images/237-536x354.jpg')},
  {'text': 'Test 3', 'image': AssetImage('assets/images/237-536x354.jpg')},
];

Map<String, dynamic> concat = {
  'image': AssetImage('assets/images/237-536x354.jpg')
};

class HistoryNavigator extends StatelessWidget {
  const HistoryNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: itemBuilder,
          itemCount: elements.length,
        ),
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    var element = elements[index];
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: [
            SizedBox(height: 45, child: Image(image: element['image'])),
            Text(element['text']),
          ],
        ),
      ),
    );
  }
}
