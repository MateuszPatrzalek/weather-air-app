import 'package:flutter/material.dart';
import 'package:weather_air_app/PermissionScreen.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PermissionScreen(),
    );
  }
}

class Strings {
  static const String appTitle = 'Clean Air';
}

