import 'package:flutter/cupertino.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/evaluateexam.dart';

import '../models/evdatareader.dart';

class EveDataProvider with ChangeNotifier{
  List<GivenExam> examgiven = [];
  Future<List> getGivenExam() async{
    EvaluateExamJson evaluateExamJson = await readEjson();
    examgiven = evaluateExamJson.givenExam;
    print(examgiven);
    return examgiven;
  }

  //List<GivenExam> reviewgood =[];
  Future<List<GivenExam>> getReview(String review)async{
    EvaluateExamJson evaluateExamJson = await readEjson();
    List<GivenExam> reviewgood = evaluateExamJson.givenExam.where((e) => e.s40StudentGrade == review).toList();
    return reviewgood;
  }

  // List<GivenExam> excellent ;
  // Future<List<GivenExam>> getEvaluated()async{
  //   EvaluateExamJson evaluateExamJson = await readEjson();
  //   excellent = evaluateExamJson.givenExam.where((e) => e.s40StudentGrade == "Good").toList();
  //   return excellent;
  // }
}