import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/screens/assignment_teacher_draft.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/screens/review_assignment.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/screens/PAS_S40_Teacher_1_TimeTable.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/screens/menu_PopUp_Selftask.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/screens/menupopup_updatemeetinglink.dart';




import 'Assignment/Assignment_teacher/screens/assignment_teacher_main.dart';
import 'Auth/screens/create_accout_screen.dart';
import 'Auth/screens/login_screen.dart';
import 'Auth/screens/signup_screen.dart';
import 'Circular/screens/circular_screen.dart';
import 'Common/screens/splas_screen.dart';
import 'Home/Screens/Home_screen.dart';
import 'Timetable/Coordinator_Timetable/screens/cordinator2.dart';
import 'Timetable/Student_Timetable/screens/PAS_S40_Student_1_TimeTable.dart';

import 'Timetable/Taecher_Timetable/screens/teachers_viewpopup.dart';


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
          builder: (_) => TimetableTeacherScreen (),
        );
      case '/teacherpop':
        return MaterialPageRoute(
          builder: (_) => ViewPopUp (),
        );
      case '/HssScreen':
        return MaterialPageRoute(
          builder: (_) => HomeScreenStudent (),
        );

      case '/meetlink':
        return MaterialPageRoute(
          builder: (_) => UpdateMeetingLink (),
        );
      case '/activity':
        return MaterialPageRoute(
          builder: (_) => MenuPopupSelfTask (),
        );
      case '/assignment_student':
        return MaterialPageRoute(
          builder: (_) => AssignmentTeacherMain(),
        );
      case '/assignment_teacher':
        return MaterialPageRoute(
          builder: (_) => AssignmentTeacher(),
        );
      case '/assignment_review_teacher':
        return MaterialPageRoute(
          builder: (_) => ReviewAssignment(),
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
