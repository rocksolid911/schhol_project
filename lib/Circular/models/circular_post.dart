// To parse this JSON data, do
//
//     final CircularPost = circularPostFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CircularPost circularPostFromJson(String str) => CircularPost.fromJson(json.decode(str));

String circularPostToJson(CircularPost data) => json.encode(data.toJson());

class CircularPost {
  CircularPost({
    @required this.s40SchoolBranchId,
    @required this.s40CreatedBy,
    @required this.s40AyStartDate,
    @required this.s40AyEndDate,
  });

  String s40SchoolBranchId;
  String s40CreatedBy;
  DateTime s40AyStartDate;
  DateTime s40AyEndDate;

  factory CircularPost.fromJson(Map<String, dynamic> json) => CircularPost(
    s40SchoolBranchId: json["S40_School_Branch_Id"],
    s40CreatedBy: json["S40_Created_By"],
    s40AyStartDate: DateTime.parse(json["S40_AY_Start_Date"]),
    s40AyEndDate: DateTime.parse(json["S40_AY_End_Date"]),
  );

  Map<String, dynamic> toJson() => {
    "S40_School_Branch_Id": s40SchoolBranchId,
    "S40_Created_By": s40CreatedBy,
    "S40_AY_Start_Date": s40AyStartDate.toIso8601String(),
    "S40_AY_End_Date": s40AyEndDate.toIso8601String(),
  };
}
