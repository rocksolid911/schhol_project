// To parse this JSON data, do
//
   //  final Circular = CircularFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Circular {
  Circular({
     this.s40CircularId,
     this.s40CircularTitle,
     this.s40CreatedDate,
     this.s40CircularStatus,
     this.s40FeedbackNeeded,
     this.s40Response,
     this.s40ResponsePercentage,
     this.s40CircularRemarks,
     this.s40CircularNumber,
  });

  int s40CircularId;
  String s40CircularTitle;
  DateTime s40CreatedDate;
  String s40CircularStatus;
  String s40FeedbackNeeded;
  String s40Response;
  String s40ResponsePercentage;
  String s40CircularRemarks;
  String s40CircularNumber;

  factory Circular.fromJson(String str) => Circular.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Circular.fromMap(Map json) => Circular(
    s40CircularId: json["S40_Circular_Id"],
    s40CircularTitle: json["S40_Circular_Title"],
    s40CreatedDate: DateTime.parse(json["S40_Created_Date"]),
    s40CircularStatus: json["S40_Circular_Status"],
    s40FeedbackNeeded: json["S40_Feedback_Needed"],
    s40Response: json["S40_Response"],
    s40ResponsePercentage: json["S40_Response_Percentage"] == null ? null : json["S40_Response_Percentage"],
    s40CircularRemarks: json["S40_Circular_Remarks"] == null ? null : json["S40_Circular_Remarks"],
    s40CircularNumber: json["S40_Circular_Number"],
  );

  Map<String, dynamic> toMap() => {
    "S40_Circular_Id": s40CircularId,
    "S40_Circular_Title": s40CircularTitle,
    "S40_Created_Date": s40CreatedDate.toIso8601String(),
    "S40_Circular_Status": s40CircularStatus,
    "S40_Feedback_Needed": s40FeedbackNeeded,
    "S40_Response": s40Response,
    "S40_Response_Percentage": s40ResponsePercentage == null ? null : s40ResponsePercentage,
    "S40_Circular_Remarks": s40CircularRemarks == null ? null : s40CircularRemarks,
    "S40_Circular_Number": s40CircularNumber,
  };
}
