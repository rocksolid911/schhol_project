// To parse this JSON data, do
//
//     final timeTableUser = timeTableUserFromJson(jsonString);

import 'dart:convert';

TimeTableUser timeTableUserFromJson(String str) => TimeTableUser.fromJson(json.decode(str));

String timeTableUserToJson(TimeTableUser data) => json.encode(data.toJson());

class TimeTableUser {
  TimeTableUser({
    this.s40SectionId,
    this.s40UserId,
    this.date,
  });

  int s40SectionId;
  int s40UserId;
  DateTime date;

  factory TimeTableUser.fromJson(Map<String, dynamic> json) => TimeTableUser(
    s40SectionId: json["S40_Section_Id"],
    s40UserId: json["S40_User_Id"],
    date: DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "S40_Section_Id": s40SectionId,
    "S40_User_Id": s40UserId,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
  };
}
