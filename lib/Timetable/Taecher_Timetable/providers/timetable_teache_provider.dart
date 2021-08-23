import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
//import 'package:http/http.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/models/timetable_teacher.dart';
import 'package:phygitalz_project_1/config/api.dart';

class TeacherTimeTableProvider with ChangeNotifier {
  //List<TimetableTeacher> _list;
  Future<List<TimetableTeacher>> teachertable(int id) async {
    List<TimetableTeacher>  timetableTeacher;
    final response = await http.get(
      Uri.parse("$serverPath/PAS_S40_Timetable/PAS_S40_Teacher_View/$id"),
    );
    timetableTeacher = timetableTeacherFromJson(response.body);
    return timetableTeacher;
  }
}
