import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/NewScreen/LandingScreen.dart';
import 'package:whatsapp/screens/homescreem.dart';
import 'package:whatsapp/screens/CameraScreen.dart';

 Future<void>main() async{

  WidgetsFlutterBinding.ensureInitialized();

  camras= await availableCameras();

  runApp(MyApp());
}class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E)),
      home:Homescreen(),

    );
  }
}