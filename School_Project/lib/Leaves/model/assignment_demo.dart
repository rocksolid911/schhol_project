// To parse this JSON data, do
//
//     final assignmentTDemo = assignmentTDemoFromJson(jsonString);

import 'dart:convert';

AssignmentTDemo assignmentTDemoFromJson(String str) => AssignmentTDemo.fromJson(json.decode(str));

String assignmentTDemoToJson(AssignmentTDemo data) => json.encode(data.toJson());

class AssignmentTDemo {
  AssignmentTDemo({
    this.s40SchoolBranch,
    this.s40ClassSection,
    this.s40Subject,
    this.s40Lessons,
    this.s40Topics,
    this.s40AssignmentType,
    this.s40AssignmentDetails,
    this.s40AssignedDate,
    this.s40DueDate,
    this.s40AssignmentStatus,
    this.s40CreatedBy,
    this.s40Document,
    this.referenceLinksList,
    this.action,
  });

  String s40SchoolBranch;
  String s40ClassSection;
  String s40Subject;
  String s40Lessons;
  String s40Topics;
  String s40AssignmentType;
  String s40AssignmentDetails;
  String s40AssignedDate;
  String s40DueDate;
  String s40AssignmentStatus;
  String s40CreatedBy;
  List<S40Document> s40Document;
  List<ReferenceLinksList> referenceLinksList;
  String action;

  factory AssignmentTDemo.fromJson(Map<String, dynamic> json) => AssignmentTDemo(
    s40SchoolBranch: json["S40_School_Branch"],
    s40ClassSection: json["S40_Class_Section"],
    s40Subject: json["S40_Subject"],
    s40Lessons: json["S40_Lessons"],
    s40Topics: json["S40_Topics"],
    s40AssignmentType: json["S40_Assignment_Type"],
    s40AssignmentDetails: json["S40_Assignment_Details"],
    s40AssignedDate: json["S40_Assigned_Date"],
    s40DueDate: json["S40_Due_Date"],
    s40AssignmentStatus: json["S40_Assignment_Status"],
    s40CreatedBy: json["S40_Created_By"],
    s40Document: List<S40Document>.from(json["S40_Document"].map((x) => S40Document.fromJson(x))),
    referenceLinksList: List<ReferenceLinksList>.from(json["reference_links_list"].map((x) => ReferenceLinksList.fromJson(x))),
    action: json["action"],
  );

  Map<String, dynamic> toJson() => {
    "S40_School_Branch": s40SchoolBranch,
    "S40_Class_Section": s40ClassSection,
    "S40_Subject": s40Subject,
    "S40_Lessons": s40Lessons,
    "S40_Topics": s40Topics,
    "S40_Assignment_Type": s40AssignmentType,
    "S40_Assignment_Details": s40AssignmentDetails,
    "S40_Assigned_Date": s40AssignedDate,
    "S40_Due_Date": s40DueDate,
    "S40_Assignment_Status": s40AssignmentStatus,
    "S40_Created_By": s40CreatedBy,
    "S40_Document": List<dynamic>.from(s40Document.map((x) => x.toJson())),
    "reference_links_list": List<dynamic>.from(referenceLinksList.map((x) => x.toJson())),
    "action": action,
  };
}

class ReferenceLinksList {
  ReferenceLinksList({
    this.url,
  });

  String url;

  factory ReferenceLinksList.fromJson(Map<String, dynamic> json) => ReferenceLinksList(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class S40Document {
  S40Document({
    this.documentBase64,
    this.documentName,
    this.documentFormat,
  });

  String documentBase64;
  String documentName;
  String documentFormat;

  factory S40Document.fromJson(Map<String, dynamic> json) => S40Document(
    documentBase64: json["Document_Base64"],
    documentName: json["Document_Name"],
    documentFormat: json["Document_Format"],
  );

  Map<String, dynamic> toJson() => {
    "Document_Base64": documentBase64,
    "Document_Name": documentName,
    "Document_Format": documentFormat,
  };
}
