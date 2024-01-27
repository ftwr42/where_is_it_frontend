import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CameraStreamWidget extends StatefulWidget {
  const CameraStreamWidget({super.key});

  @override
  _CameraStreamWidgetState createState() => _CameraStreamWidgetState();
}

class _CameraStreamWidgetState extends State<CameraStreamWidget> {
  late CameraController _controller;
  late List<CameraDescription> _cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    if (_cameras.isNotEmpty) {
      _controller = CameraController(
        _cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front),
        ResolutionPreset.medium,
      );

      _controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {
          _isCameraInitialized = true;
        });
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _openCameraApp() async {
    // Beispiel URL, muss für das spezifische Gerät angepasst werden
    const url = 'camera://';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return Center(child: CircularProgressIndicator());
    }

    return GestureDetector(
      onTap: _openCameraApp,
      child: CameraPreview(_controller),
    );
  }
}

// void main() => runApp(MaterialApp(home: Scaffold(body: CameraStreamWidget())));‘
