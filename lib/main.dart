import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';

import 'package:provider/provider.dart';

import 'Auth/models/User.dart';
import 'Auth/models/Userprovider.dart';
import 'Auth/models/auth.dart';
import 'Auth/models/user_preferences.dart';
import 'Auth/screens/login_screen.dart';
import 'Circular/models/circular_data.dart';
import 'Common/screens/splas_screen.dart';
import 'Timetable/Student_Timetable/providers/timetable_set_provider.dart';
import 'Timetable/Student_Timetable/providers/timetable_provider.dart';
import 'route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  //Hive.registerAdapter(AssignmentTAdapter());
  runApp(MyApp());
}
// void main(){
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // _getStoragePermission();
    Future<User> getUserData() => UserPreferences.instance.getUser();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Circulardata(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TimetableProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TimeTable(),
        ),
        ChangeNotifierProvider(
          create: (context) => FilterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
        ),
      ],
      child: MaterialApp(
        home: FutureBuilder(
          future: getUserData(),
          builder: (context, snapshot) {
            print(snapshot);
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              //return SplashScreen();
              default:
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.data == null)
                //splash screen should be here
                {
                  return LogIn();
                } else {
                  // UserPreferences.instance.removeUser();
                  //return HomeScreenStudent(user: snapshot.data);
                  return SplashScreen(user: snapshot.data);
                  // return CircularView();
                }
            }
          },
        ),
        //initialRoute: "/",
        //  routes: {
        //    '/login': (context) => LogIn(),
        // '/HssScreen': (context) => HomeScreenStudent(),
        //
        //  },
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
