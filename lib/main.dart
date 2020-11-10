import 'package:camera/camera.dart';
import 'package:demo/Screens/Welcome/welcome_screen.dart';
import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
