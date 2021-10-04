// To parse this JSON data, do
//
//     final timetableStudent = timetableStudentFromJson(jsonString);

import 'dart:convert';

List<TimetableStudent> timetableStudentFromJson(String str) => List<TimetableStudent>.from(json.decode(str).map((x) => TimetableStudent.fromJson(x)));

String timetableStudentToJson(List<TimetableStudent> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TimetableStudent {
  TimetableStudent({
    this.s40OnlineMeetingInfo,
    this.s40MeetingStatus,
    this.date,
    this.day,
    this.periods,
    this.teacher,
    this.subject,
    this.roomNumber,
  });

  String s40OnlineMeetingInfo;
  String s40MeetingStatus;
  DateTime date;
  String day;
  Periods periods;
  Teacher teacher;
  Subject subject;
  RoomNumber roomNumber;

  factory TimetableStudent.fromJson(Map<String, dynamic> json) => TimetableStudent(
    s40OnlineMeetingInfo: json["S40_Online_Meeting_Info"],
    s40MeetingStatus: json["S40_Meeting_Status"],
    date: DateTime.parse(json["Date"]),
    day: json["Day"],
    periods: Periods.fromJson(json["periods"]),
    teacher: Teacher.fromJson(json["teacher"]),
    subject: Subject.fromJson(json["subject"]),
    roomNumber: RoomNumber.fromJson(json["room_number"]),
  );

  Map<String, dynamic> toJson() => {
    "S40_Online_Meeting_Info": s40OnlineMeetingInfo,
    "S40_Meeting_Status": s40MeetingStatus,
    "Date": date.toIso8601String(),
    "Day": day,
    "periods": periods.toJson(),
    "teacher": teacher.toJson(),
    "subject": subject.toJson(),
    "room_number": roomNumber.toJson(),
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

class RoomNumber {
  RoomNumber({
    this.roomNumber,
  });

  String roomNumber;

  factory RoomNumber.fromJson(Map<String, dynamic> json) => RoomNumber(
    roomNumber: json["Room_Number"],
  );

  Map<String, dynamic> toJson() => {
    "Room_Number": roomNumber,
  };
}

class Subject {
  Subject({
    this.subject,
  });

  String subject;

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subject: json["subject"],
  );

  Map<String, dynamic> toJson() => {
    "subject": subject,
  };
}

class Teacher {
  Teacher({
    this.teacherDetails,
  });

  TeacherDetails teacherDetails;

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
    teacherDetails: TeacherDetails.fromJson(json["Teacher_Details"]),
  );

  Map<String, dynamic> toJson() => {
    "Teacher_Details": teacherDetails.toJson(),
  };
}

class TeacherDetails {
  TeacherDetails({
    this.s40FirstName,
    this.s40LastName,
  });

  String s40FirstName;
  String s40LastName;

  factory TeacherDetails.fromJson(Map<String, dynamic> json) => TeacherDetails(
    s40FirstName: json["S40_First_Name"],
    s40LastName: json["S40_Last_Name"],
  );

  Map<String, dynamic> toJson() => {
    "S40_First_Name": s40FirstName,
    "S40_Last_Name": s40LastName,
  };
}
