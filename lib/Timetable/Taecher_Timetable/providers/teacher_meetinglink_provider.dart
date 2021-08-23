import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/models/teacher_meetinglink.dart';
import 'package:phygitalz_project_1/config/api.dart';

class TeacherMeetProvider with ChangeNotifier {
  Future<String> teachermeet(
      DateTime createddt,
      DateTime modifydt,
      String meetinfo,
      String meetstatus,
      int createdby,
      int timetableId,
      int selfactivityId,
      String action) async {
    TeacherMeeting meeting =TeacherMeeting(
      s40CreatedDate:createddt,
      s40LastModifiedDate:modifydt,
      s40OnlineMeetingInfo:meetinfo,
      s40MeetingStatus:meetstatus,
      s40CreatedBy:createdby,
      s40TimetableId:timetableId,
      s40SelfActivityId:selfactivityId,
      action:action,
    );
    final bodyjson = teacherMeetingToJson(meeting);
    notifyListeners();
    Response response = await post(
      Uri.parse(
          '$serverPath/PAS_S40_Teacher_Timetable/PAS_S40_Meeting_Link_Create/'),
      body: bodyjson,
      headers: {'Content-Type': 'application/json'},
    );
    if(response.statusCode==200)
    return "Success";
    else
      return "fail";
  }
}
