import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:phygitalz_project_1/Auth/models/Userprovider.dart';
//import 'package:phygitalz_project_1/Auth/models/auth.dart';
import 'package:phygitalz_project_1/Circular/models/circular_data.dart';
import 'package:phygitalz_project_1/Circular/screens/circular_screen.dart';
import 'package:phygitalz_project_1/Common/screens/splas_screen.dart';
import 'package:phygitalz_project_1/Home/Screens/Home_screen.dart';
import 'package:provider/provider.dart';

//import 'Auth/models/User.dart';
//import 'Auth/models/user_preferences.dart';
import 'Auth/models/User.dart';
import 'Auth/models/Userprovider.dart';
import 'Auth/models/auth.dart';
import 'Auth/models/user_preferences.dart';
import 'Auth/screens/login_screen.dart';
import 'route.dart';

Future<void> main() async {
  runApp(
    MyApp(),
  );
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   super.initState();
  //
  //   MySharedPreferences.load();
  //   MySharedPreferences.printMyBool();
  // }
  // Future _getStoragePermission() async {
  //    bool permissionGranted;
  //   if (await Permission.storage.request().isGranted) {
  //     setState(() {
  //         permissionGranted = true;
  //     });
  //   } else if (await Permission.storage.request().isPermanentlyDenied) {
  //     await openAppSettings();
  //   } else if (await Permission.storage.request().isDenied) {
  //     setState(() {
  //       permissionGranted = false;
  //     });
  //   }
  // }
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
                  } else if (snapshot.data.toString() == null)
                  //splash screen should be here
                  {

                    return LogIn();
                  } else {
                    //UserPreferences.instance.removeUser();
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
