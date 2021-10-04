// import 'package:assssesssment_student_req01_02/AssessmentCordinator/REQ03/Questionjson/QuestionModelClass.dart';
// import 'package:assssesssment_student_req01_02/AssessmentCordinator/REQ03/Questionjson/Questionjson.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'QuestionModelClass.dart';
import 'Questionjson.dart';
class QuestionProvider with ChangeNotifier{


 bool loading = false;

  Future<List<SubmitQuestion>> GetQuestionData()async{

   loading = true;

   List <SubmitQuestion> submit = await  QuestionJson().newQuestionjson();
 loading=false;
   notifyListeners();
 return submit;

 }
 Future<List<Short>> getShortQustion()async{
  List<Short> list;
  loading = true;

  List <SubmitQuestion> submit = await  QuestionJson().newQuestionjson();
  print(submit[1].short[0].s40QuestName);
  list = submit[1].short;
  print(list.length.toString());
  loading=false;
  print(loading);
  notifyListeners();
  return list;

 }

}