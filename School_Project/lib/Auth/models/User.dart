// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.userId,
    this.emailId,
    this.method,
    this.msg,
    this.name,
    this.roleinfo,
  });

  int userId;
  String emailId;
  dynamic method;
  String msg;
  String name;
  List<Roleinfo> roleinfo;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["user_id"],
    emailId: json["email_id"],
    method: json["method"],
    msg: json["msg"],
    name: json["name"],
    roleinfo: List<Roleinfo>.from(json["roleinfo"].map((x) => Roleinfo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "email_id": emailId,
    "method": method,
    "msg": msg,
    "name": name,
    "roleinfo": List<dynamic>.from(roleinfo.map((x) => x.toJson())),
  };
}

class Roleinfo {
  Roleinfo({
    this.s40CreatedBy,
    this.s40CreatedDate,
    this.s40LastModifiedDate,
    this.s40Status,
    this.s40Designation,
    this.s40UserRole,
    this.s40UserId,
    this.s40UserRoleRel,
    this.s40RoleName,
  });

  int s40CreatedBy;
  DateTime s40CreatedDate;
  dynamic s40LastModifiedDate;
  String s40Status;
  String s40Designation;
  int s40UserRole;
  int s40UserId;
  int s40UserRoleRel;
  String s40RoleName;

  factory Roleinfo.fromJson(Map<String, dynamic> json) => Roleinfo(
    s40CreatedBy: json["S40_Created_By"],
    s40CreatedDate: DateTime.parse(json["S40_Created_Date"]),
    s40LastModifiedDate: json["S40_Last_Modified_Date"],
    s40Status: json["S40_Status"],
    s40Designation: json["S40_Designation"],
    s40UserRole: json["S40_User_Role"],
    s40UserId: json["S40_User_Id"],
    s40UserRoleRel: json["S40_User_Role_Rel"],
    s40RoleName: json["S40_Role_Name"],
  );

  Map<String, dynamic> toJson() => {
    "S40_Created_By": s40CreatedBy,
    "S40_Created_Date": s40CreatedDate.toIso8601String(),
    "S40_Last_Modified_Date": s40LastModifiedDate,
    "S40_Status": s40Status,
    "S40_Designation": s40Designation,
    "S40_User_Role": s40UserRole,
    "S40_User_Id": s40UserId,
    "S40_User_Role_Rel": s40UserRoleRel,
    "S40_Role_Name": s40RoleName,
  };
}
