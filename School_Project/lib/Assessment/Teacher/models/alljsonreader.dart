import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/alljcalss.dart';

Future<List<AllAssJson>> readAllAssJson()async{
  final String response = AllAssJclass().allJsa();
  final List<AllAssJson> allAssJson = allAssJsonFromJson(response);
  print(allAssJson);
  return allAssJson;
}