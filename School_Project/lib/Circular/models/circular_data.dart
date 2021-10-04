import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:phygitalz_project_1/config/api.dart';


class Circulardata with ChangeNotifier {
  //Map<String, dynamic> _map = {};
  List _map=[];
  bool _error;
  String _errormsg = "";
  //getters
  //Map<String, dynamic> get map => _map;
  List get map => _map;
  bool get error => _error;
  String get errormsg => _errormsg;

  Future<void> get circularData async {
    final body = {
      "S40_School_Branch_Id": "1",
      "S40_Created_By": "1",
      "S40_AY_Start_Date": "2021-02-03 08:15:27",
      "S40_AY_End_Date": "2021-06-13 13:15:27",
    };
    final bodyjson = json.encode(body);
    final response = await http.post(
      Uri.parse('$serverPath/PAS_S40_Circular_Mgmt/PAS_S40_Circular_All_View/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: bodyjson,
    );
    if (response.statusCode == 200) {
      try {
        _map = jsonDecode(response.body);
        _error = false;
      } catch (e) {
        _error = true;
        _errormsg = e.toString();
        //_map = {};
        _map=[];
      }
    } else {
      _error = true;
      _errormsg = "some thing went wrong";
      //_map = {};
      _map=[];
    }
    notifyListeners();
    void initialValues() {
     // _map = {};
      _map=[];
      _error = false;
      _errormsg = "";
      notifyListeners();
    }
  }
}
