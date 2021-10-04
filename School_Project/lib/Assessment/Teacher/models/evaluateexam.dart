// To parse this JSON data, do
//
//     final evaluateExamJson = evaluateExamJsonFromJson(jsonString);

import 'dart:convert';

EvaluateExamJson evaluateExamJsonFromJson(String str) => EvaluateExamJson.fromJson(json.decode(str));

String evaluateExamJsonToJson(EvaluateExamJson data) => json.encode(data.toJson());

class EvaluateExamJson {
  EvaluateExamJson({
    this.givenExam,
    this.notGivenExam,
  });

  List<GivenExam> givenExam;
  List<NotGivenExam> notGivenExam;

  factory EvaluateExamJson.fromJson(Map<String, dynamic> json) => EvaluateExamJson(
    givenExam: List<GivenExam>.from(json["Given_Exam"].map((x) => GivenExam.fromJson(x))),
    notGivenExam: List<NotGivenExam>.from(json["Not_Given_Exam"].map((x) => NotGivenExam.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Given_Exam": List<dynamic>.from(givenExam.map((x) => x.toJson())),
    "Not_Given_Exam": List<dynamic>.from(notGivenExam.map((x) => x.toJson())),
  };
}

class GivenExam {
  GivenExam({
    this.s40StudentName,
    this.s40UserRollNumber,
    this.s40Document,
    this.s40Marks,
    this.s40Percentage,
    this.s40TimeTaken,
    this.s40IsCorrected,
    this.s40StudentGrade,
    this.s40AssessAnsStatus,
    this.s40CreatedDate,
    this.s40LastModifiedDate,
    this.s40UserId,
  });

  String s40StudentName;
  String s40UserRollNumber;
  List<S40Document> s40Document;
  String s40Marks;
  String s40Percentage;
  String s40TimeTaken;
  S40IsCorrected s40IsCorrected;
  String s40StudentGrade;
  S40AssessAnsStatus s40AssessAnsStatus;
  DateTime s40CreatedDate;
  DateTime s40LastModifiedDate;
  int s40UserId;

  factory GivenExam.fromJson(Map<String, dynamic> json) => GivenExam(
    s40StudentName: json["S40_Student_Name"],
    s40UserRollNumber: json["S40_User_Roll_Number"],
    s40Document: List<S40Document>.from(json["S40_Document"].map((x) => S40Document.fromJson(x))),
    s40Marks: json["S40_Marks"],
    s40Percentage: json["S40_Percentage"],
    s40TimeTaken: json["S40_Time_Taken"],
    s40IsCorrected: s40IsCorrectedValues.map[json["S40_Is_Corrected"]],
    s40StudentGrade: json["S40_Student_Grade"],
    s40AssessAnsStatus: s40AssessAnsStatusValues.map[json["S40_Assess_Ans_Status"]],
    s40CreatedDate: DateTime.parse(json["S40_Created_Date"]),
    s40LastModifiedDate: DateTime.parse(json["S40_Last_Modified_Date"]),
    s40UserId: json["S40_User_Id"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Student_Name": s40StudentName,
    "S40_User_Roll_Number": s40UserRollNumber,
    "S40_Document": List<dynamic>.from(s40Document.map((x) => x.toJson())),
    "S40_Marks": s40Marks,
    "S40_Percentage": s40Percentage,
    "S40_Time_Taken": s40TimeTaken,
    "S40_Is_Corrected": s40IsCorrectedValues.reverse[s40IsCorrected],
    "S40_Student_Grade": s40StudentGradeValues.reverse[s40StudentGrade],
    "S40_Assess_Ans_Status": s40AssessAnsStatusValues.reverse[s40AssessAnsStatus],
    "S40_Created_Date": "${s40CreatedDate.year.toString().padLeft(4, '0')}-${s40CreatedDate.month.toString().padLeft(2, '0')}-${s40CreatedDate.day.toString().padLeft(2, '0')}",
    "S40_Last_Modified_Date": "${s40LastModifiedDate.year.toString().padLeft(4, '0')}-${s40LastModifiedDate.month.toString().padLeft(2, '0')}-${s40LastModifiedDate.day.toString().padLeft(2, '0')}",
    "S40_User_Id": s40UserId,
  };
}

enum S40AssessAnsStatus { CORRECTED, NOT_CORRECTED, REJECTED, NOT_TURNEDIN, S40_ASSESS_ANS_STATUS_NOT_CORRECTED }

final s40AssessAnsStatusValues = EnumValues({
  "Corrected": S40AssessAnsStatus.CORRECTED,
  "Not Corrected": S40AssessAnsStatus.NOT_CORRECTED,
  "Not Turnedin": S40AssessAnsStatus.NOT_TURNEDIN,
  "Rejected": S40AssessAnsStatus.REJECTED,
  "NOT Corrected": S40AssessAnsStatus.S40_ASSESS_ANS_STATUS_NOT_CORRECTED
});

class S40Document {
  S40Document({
    this.s40DocumentName,
    this.s40DocumentBase64,
    this.s40DocumentFormat,
  });

  S40DocumentName s40DocumentName;
  String s40DocumentBase64;
  S40DocumentFormat s40DocumentFormat;

  factory S40Document.fromJson(Map<String, dynamic> json) => S40Document(
    s40DocumentName: s40DocumentNameValues.map[json["S40_Document_Name"]],
    s40DocumentBase64: json["S40_Document_Base64"],
    s40DocumentFormat: s40DocumentFormatValues.map[json["S40_Document_Format"]],
  );

  Map<String, dynamic> toJson() => {
    "S40_Document_Name": s40DocumentNameValues.reverse[s40DocumentName],
    "S40_Document_Base64": s40DocumentBase64,
    "S40_Document_Format": s40DocumentFormatValues.reverse[s40DocumentFormat],
  };
}

enum S40DocumentFormat { PDF }

final s40DocumentFormatValues = EnumValues({
  "pdf": S40DocumentFormat.PDF
});

enum S40DocumentName { UPDATED_TEST_1 }

final s40DocumentNameValues = EnumValues({
  "Updated Test 1": S40DocumentName.UPDATED_TEST_1
});

enum S40IsCorrected { YES }

final s40IsCorrectedValues = EnumValues({
  "Yes": S40IsCorrected.YES
});

enum S40StudentGrade { POOR, EXCELLENT, GOOD, FAIR, S40_STUDENT_GRADE_POOR }

final s40StudentGradeValues = EnumValues({
  "Excellent": S40StudentGrade.EXCELLENT,
  "fair": S40StudentGrade.FAIR,
  "Good": S40StudentGrade.GOOD,
  "Poor": S40StudentGrade.POOR,
  "poor": S40StudentGrade.S40_STUDENT_GRADE_POOR
});

class NotGivenExam {
  NotGivenExam({
    this.s40UserRollNumber,
    this.s40StudentName,
    this.s40Reason,
    this.s40UserId,
  });

  String s40UserRollNumber;
  String s40StudentName;
  String s40Reason;
  int s40UserId;

  factory NotGivenExam.fromJson(Map<String, dynamic> json) => NotGivenExam(
    s40UserRollNumber: json["S40_User_Roll_Number"],
    s40StudentName: json["S40_Student_Name"],
    s40Reason: json["S40_Reason"],
    s40UserId: json["S40_User_Id"],
  );

  Map<String, dynamic> toJson() => {
    "S40_User_Roll_Number": s40UserRollNumber,
    "S40_Student_Name": s40StudentName,
    "S40_Reason": s40Reason,
    "S40_User_Id": s40UserId,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
