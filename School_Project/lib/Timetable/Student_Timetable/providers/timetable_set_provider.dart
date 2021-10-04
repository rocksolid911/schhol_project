import 'package:flutter/cupertino.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/models/timetable_student.dart';

class TimeTable with ChangeNotifier {
  List<TimetableStudent> _timetableStudent = [];
  List<TimetableStudent> get tTable => _timetableStudent;
  void setTable(List<TimetableStudent> timetableStudent) async {
   // await Future.delayed(const Duration(milliseconds: 2000), () {});
    _timetableStudent = timetableStudent;
    notifyListeners();
  }
}
