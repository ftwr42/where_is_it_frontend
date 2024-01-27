import 'package:flutter/material.dart';

class NetworkExampleScreen extends StatelessWidget {
  const NetworkExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          wrapperButton(
              child: ElevatedButton(
                  onPressed: () => {
                        // NetworkManager().sendPutRequest(""),
                      },
                  child: const Text("POST"))),
        ],
      ),
    );
  }

  Center wrapperButton({required Widget child}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
