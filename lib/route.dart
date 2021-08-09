import 'package:flutter/material.dart';



import 'Auth/screens/create_accout_screen.dart';
import 'Auth/screens/login_screen.dart';
import 'Auth/screens/signup_screen.dart';
import 'Circular/screens/circular_screen.dart';
import 'Common/screens/splas_screen.dart';
import 'Home/Screens/Home_screen.dart';
import 'Timetable/screens/teachers_viewpopup.dart';
import 'Timetable/screens/timetable_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LogIn(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
      case '/createacc':
        return MaterialPageRoute(
          builder: (_) => CreateAccount(),
        );
      case '/circular':
        return MaterialPageRoute(
          builder: (_) => CircularView (),
        );
      case '/timetable_student':
        return MaterialPageRoute(
          builder: (_) => TimeTableScreen (),
        );
      case '/timetable_teacher':
        return MaterialPageRoute(
          builder: (_) => TimeTableScreen (),
        );
      case '/teacherpop':
        return MaterialPageRoute(
          builder: (_) => ViewPopUp (),
        );
      case '/HssScreen':
        return MaterialPageRoute(
          builder: (_) => HomeScreenStudent (),
        );
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
