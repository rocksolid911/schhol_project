import 'package:flutter/cupertino.dart';

import '../models/datajson.dart';
import '../models/datareader.dart';


class DataProvider with ChangeNotifier {
  List<Assignment> asstype ;
  List<Assignment> assStat;
  List<Assignment> type_homework = [];
  List<Assignment> type_portfolio = [];
  List<Assignment> draft = [];


//filter assignment as type only Types:Lab Record,Port Folio,Home work

  Future<List<Assignment>> assignmentType(String type) async {
    //final String response = jclas().jsa();

    JsonDemo jsonDemo = await readjson();

    asstype = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == type)
        .toList();
    //print("no of $type : ${asstype.length}");
    return asstype;
  }

  //filter assignment as status only Status:Draft,Published,Pending

  Future<List<Assignment>> assignmentStatus(String status) async {
    //final String response = jclas().jsa();
    JsonDemo jsonDemo = await readjson();

    assStat = jsonDemo.assignments
        .where((e) => e.s40AssignmentStatus == status)
        .toList();
    //print("no of $status : ${assStat.length}");
    return assStat;
  }

  // Future<List<Assignment>> homework() async {
  //   //final String response = jclas().jsa();
  //   JsonDemo jsonDemo = await readjson();
  //
  //   type_homework = jsonDemo.assignments
  //       .where((e) => e.s40AssignmentType == "Home work")
  //       .toList();
  //   print("no of homework : ${type_homework.length}");
  //   return type_homework;
  // }
  // Future<List<Assignment>> drafts() async {
  //   //final String response = jclas().jsa();
  //   JsonDemo jsonDemo = await readjson();
  //
  //   draft = jsonDemo.assignments
  //       .where((e) => e.s40AssignmentStatus == "Draft")
  //       .toList();
  //   print("no of drafts : ${draft.length}");
  //   return draft;
  // }
  //
  // Future<List<Assignment>> portfolio() async {
  //   //final String response = jclas().jsa();
  //   JsonDemo jsonDemo = await readjson();
  //
  //   type_portfolio = jsonDemo.assignments
  //       .where((e) => e.s40AssignmentType == "Port Folio")
  //       .toList();
  //   print("no of portfolio : ${type_portfolio.length}");
  //   return type_portfolio;
  // }

  Future<List<Assignment>> bYStatAndType({String type, String stat}) async {

    JsonDemo jsonDemo = await readjson();

    draft = jsonDemo.assignments
        .where((e) =>
    e.s40AssignmentStatus == stat &&
        //e.s40Subject == "physics" &&
        e.s40AssignmentType == type)
        .toList();
   // print("no of Draft : ${draft.length}");
    return draft;
  }

}
