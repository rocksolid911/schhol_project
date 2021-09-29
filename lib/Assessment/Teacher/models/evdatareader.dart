import 'package:phygitalz_project_1/Assessment/Teacher/models/evaluateexam.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/evjclass.dart';

Future<EvaluateExamJson> readEjson()async{
  final String response = EvJclass().ejsa();
  final evaluateExamJson = evaluateExamJsonFromJson(response);
  return evaluateExamJson;
}