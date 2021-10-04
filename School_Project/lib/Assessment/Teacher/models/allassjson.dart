// To parse this JSON data, do
//
//     final allAssJson = allAssJsonFromJson(jsonString);

import 'dart:convert';

List<AllAssJson> allAssJsonFromJson(String str) => List<AllAssJson>.from(json.decode(str).map((x) => AllAssJson.fromJson(x)));

String allAssJsonToJson(List<AllAssJson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllAssJson {
  AllAssJson({
    this.s40AssessmentId,
    this.s40ClassId,
    this.s40ClassSection,
    this.s40SubjectId,
    this.s40SubjectName,
    this.s40AssessmentName,
    this.s40Title,
    this.s40TeacherName,
    this.s40MaxScore,
    this.s40CurrentScore,
    this.s40Type,
    this.s40Term,
    this.s40AttendAssessVia,
    this.s40AnsMethod,
    this.s40AssessPatternId,
    this.s40Instructions,
    this.s40LessonId,
    this.s40LessonName,
    this.s40ScheduleDate,
    this.s40StartTime,
    this.s40EndTime,
    this.s40Status,
    this.s40Remarks,
    this.s40Response,
    this.s40AverageScore,
  });

  String s40AssessmentId;
  String s40ClassId;
  String s40ClassSection;
  String s40SubjectId;
  String s40SubjectName;
  String s40AssessmentName;
  String s40Title;
  String s40TeacherName;
  String s40MaxScore;
  String s40CurrentScore;
  String s40Type;
  String s40Term;
  String s40AttendAssessVia;
  String s40AnsMethod;
  String s40AssessPatternId;
  String s40Instructions;
  String s40LessonId;
  String s40LessonName;
  String s40ScheduleDate;
  String s40StartTime;
  String s40EndTime;
  String s40Status;
  String s40Remarks;
  String s40Response;
  String s40AverageScore;

  factory AllAssJson.fromJson(Map<String, dynamic> json) => AllAssJson(
    s40AssessmentId: json["S40_Assessment_ID"],
    s40ClassId: json["S40_Class_Id"],
    s40ClassSection: json["S40_Class_Section"],
    s40SubjectId: json["S40_Subject_Id"],
    s40SubjectName: json["S40_Subject_Name"],
    s40AssessmentName: json["S40_Assessment_Name"],
    s40Title: json["S40_Title"],
    s40TeacherName: json["S40_Teacher_Name"],
    s40MaxScore: json["S40_Max_Score"],
    s40CurrentScore: json["S40_Current_Score"],
    s40Type: json["S40_Type"],
    s40Term: json["S40_Term"],
    s40AttendAssessVia: json["S40_Attend_Assess_Via"],
    s40AnsMethod: json["S40_Ans_Method"],
    s40AssessPatternId: json["S40_Assess_Pattern_Id"],
    s40Instructions: json["S40_Instructions"],
    s40LessonId: json["S40_Lesson_Id"],
    s40LessonName: json["S40_Lesson_Name"],
    s40ScheduleDate: json["S40_Schedule_Date"],
    s40StartTime: json["S40_Start_Time"],
    s40EndTime: json["S40_End_Time"],
    s40Status: json["S40_Status"],
    s40Remarks: json["S40_Remarks"],
    s40Response: json["S40_Response"],
    s40AverageScore: json["S40_Average_Score"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Assessment_ID": s40AssessmentId,
    "S40_Class_Id": s40ClassId,
    "S40_Class_Section": s40ClassSection,
    "S40_Subject_Id": s40SubjectId,
    "S40_Subject_Name": s40SubjectName,
    "S40_Assessment_Name": s40AssessmentName,
    "S40_Title": s40Title,
    "S40_Teacher_Name": s40TeacherName,
    "S40_Max_Score": s40MaxScore,
    "S40_Current_Score": s40CurrentScore,
    "S40_Type": s40Type,
    "S40_Term": s40Term,
    "S40_Attend_Assess_Via": s40AttendAssessVia,
    "S40_Ans_Method": s40AnsMethod,
    "S40_Assess_Pattern_Id": s40AssessPatternId,
    "S40_Instructions": s40Instructions,
    "S40_Lesson_Id": s40LessonId,
    "S40_Lesson_Name": s40LessonName,
    "S40_Schedule_Date": s40ScheduleDate,
    "S40_Start_Time": s40StartTime,
    "S40_End_Time": s40EndTime,
    "S40_Status": s40Status,
    "S40_Remarks": s40Remarks,
    "S40_Response": s40Response,
    "S40_Average_Score": s40AverageScore,
  };
}
