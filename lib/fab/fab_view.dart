import 'package:flutter/material.dart';

/**class MainScreenFab extends StatelessWidget {
  final VoidCallback onAddFolder;
  final VoidCallback onAddWardrobe;
  final VoidCallback onTakePicture;
  final VoidCallback onTakeDefault;

  MainScreenFab({
    required this.onAddFolder,
    required this.onAddWardrobe,
    required this.onTakePicture,
    required this.onTakeDefault,
  });

  @override
  Widget build(BuildContext context) {
    return WiiFab(
      onPressed: () {
        // Delegate actions to fab_view.dart
        onAddFolder();
        onAddWardrobe();
        onTakePicture();
        onTakeDefault();
      },
    );
  }
}

class WardrobeScreenFab extends StatelessWidget {
  final VoidCallback onPressed;

  WardrobeScreenFab({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return WiiFab(
      onPressed: onPressed,
    );
  }
}

class FolderScreenFab extends StatelessWidget {
  final VoidCallback onPressed;

  FolderScreenFab({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return WiiFab(
      onPressed: onPressed,
    );
  }
}**/
