// To parse this JSON data, do
//
//     final teacherMeeting = teacherMeetingFromJson(jsonString);

import 'dart:convert';

TeacherMeeting teacherMeetingFromJson(String str) => TeacherMeeting.fromJson(json.decode(str));

String teacherMeetingToJson(TeacherMeeting data) => json.encode(data.toJson());

class TeacherMeeting {
  TeacherMeeting({
    this.s40CreatedDate,
    this.s40LastModifiedDate,
    this.s40OnlineMeetingInfo,
    this.s40MeetingStatus,
    this.s40CreatedBy,
    this.s40TimetableId,
    this.s40SelfActivityId,
    this.action,
  });

  dynamic s40CreatedDate;
  dynamic s40LastModifiedDate;
  String s40OnlineMeetingInfo;
  String s40MeetingStatus;
  int s40CreatedBy;
  int s40TimetableId;
  dynamic s40SelfActivityId;
  String action;

  factory TeacherMeeting.fromJson(Map<String, dynamic> json) => TeacherMeeting(
    s40CreatedDate: json["S40_Created_Date"],
    s40LastModifiedDate: json["S40_Last_Modified_Date"],
    s40OnlineMeetingInfo: json["S40_Online_Meeting_Info"],
    s40MeetingStatus: json["S40_Meeting_Status"],
    s40CreatedBy: json["S40_Created_By"],
    s40TimetableId: json["S40_Timetable_Id"],
    s40SelfActivityId: json["S40_Self_Activity_Id"],
    action: json["action"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Created_Date": s40CreatedDate,
    "S40_Last_Modified_Date": s40LastModifiedDate,
    "S40_Online_Meeting_Info": s40OnlineMeetingInfo,
    "S40_Meeting_Status": s40MeetingStatus,
    "S40_Created_By": s40CreatedBy,
    "S40_Timetable_Id": s40TimetableId,
    "S40_Self_Activity_Id": s40SelfActivityId,
    "action": action,
  };
}
