// To parse this JSON data, do
//
//     final submitQuestion = submitQuestionFromJson(jsonString);
//https://run.mocky.io/v3/2a3f4d2f-a0b5-4a5d-9c6e-f3261deb4cff
import 'dart:convert';

List<SubmitQuestion> submitQuestionFromJson(String str) => List<SubmitQuestion>.from(json.decode(str).map((x) => SubmitQuestion.fromJson(x)));

String submitQuestionToJson(List<SubmitQuestion> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubmitQuestion {
  SubmitQuestion({
    this.objective,
    this.short,
    this.long,
    this.sectionDetails,
  });

  List<dynamic> objective;
  List<Short> short;
  List<dynamic> long;
  List<SectionDetail> sectionDetails;

  factory SubmitQuestion.fromJson(Map<String, dynamic> json) => SubmitQuestion(
    objective: json["objective"] == null ? null : List<dynamic>.from(json["objective"].map((x) => x)),
    short: json["short"] == null ? null : List<Short>.from(json["short"].map((x) => Short.fromJson(x))),
    long: json["long"] == null ? null : List<dynamic>.from(json["long"].map((x) => x)),
    sectionDetails: json["section_details"] == null ? null : List<SectionDetail>.from(json["section_details"].map((x) => SectionDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "objective": objective == null ? null : List<dynamic>.from(objective.map((x) => x)),
    "short": short == null ? null : List<dynamic>.from(short.map((x) => x.toJson())),
    "long": long == null ? null : List<dynamic>.from(long.map((x) => x)),
    "section_details": sectionDetails == null ? null : List<dynamic>.from(sectionDetails.map((x) => x.toJson())),
  };
}

class SectionDetail {
  SectionDetail({
    this.s40QpSectionName,
    this.s40QpSectionDesc,
    this.s40QuestToAttend,
    this.s40MarksPerQuest,
    this.s40QpSectionSlNumber,
  });

  String s40QpSectionName;
  String s40QpSectionDesc;
  int s40QuestToAttend;
  int s40MarksPerQuest;
  int s40QpSectionSlNumber;

  factory SectionDetail.fromJson(Map<String, dynamic> json) => SectionDetail(
    s40QpSectionName: json["S40_QPSection_Name"],
    s40QpSectionDesc: json["S40_QPSection_Desc"],
    s40QuestToAttend: json["S40_Quest_To_Attend"],
    s40MarksPerQuest: json["S40_Marks_Per_Quest"],
    s40QpSectionSlNumber: json["S40_QPSection_Sl_Number"],
  );

  Map<String, dynamic> toJson() => {
    "S40_QPSection_Name": s40QpSectionName,
    "S40_QPSection_Desc": s40QpSectionDesc,
    "S40_Quest_To_Attend": s40QuestToAttend,
    "S40_Marks_Per_Quest": s40MarksPerQuest,
    "S40_QPSection_Sl_Number": s40QpSectionSlNumber,
  };
}

class Short {
  Short({
    this.s40QuestId,
    this.s40QuestName,
    this.s40IsMainOrSub,
    this.s40Type,
    this.s40SubType,
    this.s40QuestNumber,
    this.s40QuestCategory,
    this.s40ImageExist,
    this.s40MarksAllotted,
    this.s40IsRequired,
    this.subQuestion,
    this.answer,
  });

  int s40QuestId;
  String s40QuestName;
  String s40IsMainOrSub;
  S40Type s40Type;
  S40SubType s40SubType;
  String s40QuestNumber;
  S40QuestCategory s40QuestCategory;
  S40 s40ImageExist;
  String s40MarksAllotted;
  bool s40IsRequired;
  List<Short> subQuestion;
  Answer answer;

  factory Short.fromJson(Map<String, dynamic> json) => Short(
    s40QuestId: json["S40_Quest_Id"],
    s40QuestName: json["S40_Quest_Name"],
    s40IsMainOrSub: json["S40_Is_Main_or_Sub"],
    s40Type: s40TypeValues.map[json["S40_Type"]],
    s40SubType: s40SubTypeValues.map[json["S40_Sub_Type"]],
    s40QuestNumber: json["S40_Quest_Number"] == null ? null : json["S40_Quest_Number"],
    s40QuestCategory: s40QuestCategoryValues.map[json["S40_Quest_Category"]],
    s40ImageExist: s40Values.map[json["S40_Image_Exist"]],
    s40MarksAllotted: json["S40_Marks_Allotted"],
    s40IsRequired: json["S40_Is_Required"],
    subQuestion: json["Sub_Question"] == null ? null : List<Short>.from(json["Sub_Question"].map((x) => Short.fromJson(x))),
    answer: Answer.fromJson(json["answer"]),
  );

  Map<String, dynamic> toJson() => {
    "S40_Quest_Id": s40QuestId,
    "S40_Quest_Name": s40QuestName,
    "S40_Is_Main_or_Sub": s40IsMainOrSub,
    "S40_Type": s40TypeValues.reverse[s40Type],
    "S40_Sub_Type": s40SubTypeValues.reverse[s40SubType],
    "S40_Quest_Number": s40QuestNumber == null ? null : s40QuestNumber,
    "S40_Quest_Category": s40QuestCategoryValues.reverse[s40QuestCategory],
    "S40_Image_Exist": s40Values.reverse[s40ImageExist],
    "S40_Marks_Allotted": s40MarksAllotted,
    "S40_Is_Required": s40IsRequired,
    "Sub_Question": subQuestion == null ? null : List<dynamic>.from(subQuestion.map((x) => x.toJson())),
    "answer": answer.toJson(),
  };
}

class Answer {
  Answer({
    this.s40QuestSAnsKeyRelId,
    this.s40AnsKey,
    this.s40AnsKeyDocExit,
  });

  int s40QuestSAnsKeyRelId;
  String s40AnsKey;
  S40 s40AnsKeyDocExit;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    s40QuestSAnsKeyRelId: json["S40_Quest_SAns_Key_Rel_Id"],
    s40AnsKey: json["S40_Ans_Key"],
    s40AnsKeyDocExit: s40Values.map[json["S40_Ans_Key_Doc_Exit"]],
  );

  Map<String, dynamic> toJson() => {
    "S40_Quest_SAns_Key_Rel_Id": s40QuestSAnsKeyRelId,
    "S40_Ans_Key": s40AnsKey,
    "S40_Ans_Key_Doc_Exit": s40Values.reverse[s40AnsKeyDocExit],
  };
}

enum S40 { NO }

final s40Values = EnumValues({
  "no": S40.NO
});

enum S40QuestCategory { ANALYZING, APPLYING }

final s40QuestCategoryValues = EnumValues({
  "Analyzing": S40QuestCategory.ANALYZING,
  "Applying": S40QuestCategory.APPLYING
});

enum S40SubType { NA }

final s40SubTypeValues = EnumValues({
  "na": S40SubType.NA
});

enum S40Type { SHORT_ANSWER }

final s40TypeValues = EnumValues({
  "short answer": S40Type.SHORT_ANSWER
});

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
