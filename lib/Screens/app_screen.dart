import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

 CameraController controller;

class AppScreen extends StatelessWidget {
  final List<CameraDescription> cameras;

  AppScreen(this.cameras);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    controller = new CameraController(cameras[0], ResolutionPreset.high);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: 0,
              child: new CameraPreview(controller),
            ),
            Positioned(
              bottom: size.height * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                  color: Colors.blue[200],
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}