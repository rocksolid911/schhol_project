
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/models/timetable_user_info.dart';
import 'package:phygitalz_project_1/config/api.dart';

import '../models/timetable_student.dart';
class TimetableProvider with ChangeNotifier{
  List<TimetableStudent>table1;
   T_table(int secId,int userId,DateTime time) async{
    List<TimetableStudent>timetableStudent ;
    TimeTableUser tableinput =
    //"{'S40_Section_Id': $secId, 'S40_User_Id': $userId, 'DateTime': $time}";
    TimeTableUser(s40SectionId: secId,s40UserId: userId,date: time);

    //final bodyjson = json.encode(tableinput);
    final bodyjson =timeTableUserToJson( tableinput);
    notifyListeners();

    Response response = await post(
      Uri.parse(
          '$serverPath/PAS_S40_Timetable/PAS_S40_Section_Timetable/'),
      body: bodyjson,
      headers: {'Content-Type': 'application/json'},
    );
    if(response.statusCode==200){
       timetableStudent = timetableStudentFromJson(response.body);
       table1=timetableStudent;
       print(response.statusCode);
       notifyListeners();
    }else{
      print(response.statusCode);
    }
    return table1;
  }

}