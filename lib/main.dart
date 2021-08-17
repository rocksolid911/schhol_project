import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import 'Auth/models/User.dart';
import 'Auth/models/Userprovider.dart';
import 'Auth/models/auth.dart';
import 'Auth/models/user_preferences.dart';
import 'Auth/screens/login_screen.dart';
import 'Circular/models/circular_data.dart';
import 'Common/screens/splas_screen.dart';
import 'Timetable/Student_Timetable/models/timetable.dart';
import 'Timetable/Student_Timetable/models/timetable_provider.dart';
import 'route.dart';

void main()  => runApp(
    MyApp(),
  );


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
   // _getStoragePermission();
    Future<User> getUserData()  =>  UserPreferences.instance.getUser();
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
            }),
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
