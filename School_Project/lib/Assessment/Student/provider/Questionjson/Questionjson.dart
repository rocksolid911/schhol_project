import 'dart:convert';
import 'dart:math';
//import 'package:assssesssment_student_req01_02/common/appbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
//import 'package:assssesssment_student_req01_02/AssessmentCordinator/REQ03/Questionjson/QuestionModelClass.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'QuestionModelClass.dart';

class QuestionJson {
  // List<dynamic> objective;
  List<Short> short;
  // List<dynamic> long;
  List<SectionDetail> sectionDetails;

  showtoast() {
    Fluttertoast.showToast(msg: "Something went wrong");
  }

  Future<List<SubmitQuestion>> newQuestionjson() async {
    List<SubmitQuestion> submitQuestion;

    try {
      // final data = {
      //   "S40_Assess_Id": 52,
      //   "Type": "assess",
      //   "S40_School_Branch_Id": 1,
      //   "S40_User_Id": 49
      // };
      // final bodyjson = json.encode(data);

      var url = Uri.parse(
          "https://run.mocky.io/v3/2a3f4d2f-a0b5-4a5d-9c6e-f3261deb4cff");
      Response response = await http.get(
        url,
        // body: bodyjson, headers: {'Content-Type': 'application/json'}
      );

      if (response.statusCode == 200) {
        submitQuestion = submitQuestionFromJson(response.body);
       print("Status code: ${response.statusCode}");
        return submitQuestion;
      } else {
        return showtoast();
      }
    } catch (e) {
      log(e);
    }
  }

}
