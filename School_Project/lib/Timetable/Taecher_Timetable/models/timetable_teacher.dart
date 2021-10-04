// To parse this JSON data, do
//
//     final timetableTeacher = timetableTeacherFromJson(jsonString);

import 'dart:convert';

List<TimetableTeacher> timetableTeacherFromJson(String str) => List<TimetableTeacher>.from(json.decode(str).map((x) => TimetableTeacher.fromJson(x)));

String timetableTeacherToJson(List<TimetableTeacher> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TimetableTeacher {
  TimetableTeacher({
    this.s40TimetableId,
    this.meetingLink,
    this.s40Day,
    this.s40WeekNumber,
    this.s40CreatedBy,
    this.s40SectionId,
    this.s40ClassPeriodRelId,
    this.s40AssignedTeacherId,
  });

  int s40TimetableId;
  List<MeetingLink> meetingLink;
  String s40Day;
  String s40WeekNumber;
  int s40CreatedBy;
  int s40SectionId;
  int s40ClassPeriodRelId;
  int s40AssignedTeacherId;

  factory TimetableTeacher.fromJson(Map<String, dynamic> json) => TimetableTeacher(
    s40TimetableId: json["S40_Timetable_Id"],
    meetingLink: List<MeetingLink>.from(json["Meeting_link"].map((x) => MeetingLink.fromJson(x))),
    s40Day: json["S40_Day"],
    s40WeekNumber: json["S40_Week_Number"],
    s40CreatedBy: json["S40_Created_By"],
    s40SectionId: json["S40_Section_Id"],
    s40ClassPeriodRelId: json["S40_Class_Period_Rel_Id"],
    s40AssignedTeacherId: json["S40_Assigned_Teacher_Id"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Timetable_Id": s40TimetableId,
    "Meeting_link": List<dynamic>.from(meetingLink.map((x) => x.toJson())),
    "S40_Day": s40Day,
    "S40_Week_Number": s40WeekNumber,
    "S40_Created_By": s40CreatedBy,
    "S40_Section_Id": s40SectionId,
    "S40_Class_Period_Rel_Id": s40ClassPeriodRelId,
    "S40_Assigned_Teacher_Id": s40AssignedTeacherId,
  };
}

class MeetingLink {
  MeetingLink({
    this.section,
    this.roomNumber,
    this.subject,
    this.date,
    this.day,
    this.periods,
  });

  String section;
  String roomNumber;
  String subject;
  DateTime date;
  String day;
  Periods periods;

  factory MeetingLink.fromJson(Map<String, dynamic> json) => MeetingLink(
    section: json["Section"] == null ? null : json["Section"],
    roomNumber: json["Room_Number "] == null ? null : json["Room_Number "],
    subject: json["Subject"] == null ? null : json["Subject"],
    date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
    day: json["Day"] == null ? null : json["Day"],
    periods: json["periods"] == null ? null : Periods.fromJson(json["periods"]),
  );

  Map<String, dynamic> toJson() => {
    "Section": section == null ? null : section,
    "Room_Number ": roomNumber == null ? null : roomNumber,
    "Subject": subject == null ? null : subject,
    "Date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "Day": day == null ? null : day,
    "periods": periods == null ? null : periods.toJson(),
  };
}

class Periods {
  Periods({
    this.s40PeriodStartTime,
    this.s40PeriodEndTime,
    this.s40PeriodType,
  });

  String s40PeriodStartTime;
  String s40PeriodEndTime;
  String s40PeriodType;

  factory Periods.fromJson(Map<String, dynamic> json) => Periods(
    s40PeriodStartTime: json["S40_Period_Start_Time"],
    s40PeriodEndTime: json["S40_Period_End_Time"],
    s40PeriodType: json["S40_Period_Type"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Period_Start_Time": s40PeriodStartTime,
    "S40_Period_End_Time": s40PeriodEndTime,
    "S40_Period_Type": s40PeriodType,
  };
}
