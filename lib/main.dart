import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/views/screens/login_screen.dart';
import 'route_generator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

