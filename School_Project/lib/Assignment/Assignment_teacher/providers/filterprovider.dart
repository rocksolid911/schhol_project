import 'package:flutter/cupertino.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';

class FilterProvider with ChangeNotifier{
  List<Assignment> _labrecord=[];
  List<Assignment> _homework;
  List<Assignment> _portfolio;

  List<Assignment> get labrocord => _labrecord;
  List<Assignment> get homework => _homework;
  List<Assignment> get portfolio => _portfolio;

  // Future<void> filterAssignment() async {
  //   // List<Assignment> lab = await DataProvider().lab();
  //   // _labrecord = lab;
  //   // lab.forEach((e) => print(e.s40AssignedDate));
  //   // print(lab[0].s40Document[0].documentName);
  //
  //
  //   List<Assignment> hwork = await DataProvider().homework();
  //   _homework = hwork;
  //   hwork.forEach((e) => print(e.s40AssignedDate));
  //   print(hwork[0].s40Document[0].documentName);
  //
  //   List<Assignment> portfol = await DataProvider().portfolio();
  //   _portfolio = portfol;
  //   portfol.forEach((e) => print(e.s40AssignedDate));
  //   print(portfol[0].s40Document[0].documentName);
  //   notifyListeners();
  // }

  Future<List<Assignment>> filterassigntype(String type) async {
    List<Assignment> lab = await DataProvider().assignmentType(type);
    _labrecord = lab;
    notifyListeners();
    return _labrecord;
    // lab.forEach((e) => print(e.s40AssignedDate));
    // print(lab[0].s40Document[0].documentName);

  }
  }


