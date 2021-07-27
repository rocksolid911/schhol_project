import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Circular/models/circular_data.dart';

import 'package:provider/provider.dart';
import 'package:user_repository/user_repository.dart';
import 'route.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Circulardata()),
      ],
      child: MaterialApp(
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
