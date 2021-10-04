import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:phygitalz_project_1/Auth/models/user_preferences.dart';



import 'User.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(String email, String password) async {
    var result;

    final loginData =
       {'S40_Email': email, 'S40_Password': password, "S40_Method": null};

    final bodyjson = json.encode(loginData);
    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    Response response = await post(
      Uri.parse(
          'http://13.232.236.195/school4.0_loc/api/V1/PAS_S40_Signup_Signin/PAS_S40_Login/'),
      body: bodyjson,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);

       //var userData = responseData;

      User authUser = User.fromJson(responseData);

      UserPreferences.instance.saveUser(authUser);
      print("auth_user"+authUser.toString());

      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }

    return result;
  }
  void logOut(){
    UserPreferences.instance.removeUser();
    _loggedInStatus=Status.NotLoggedIn;
    notifyListeners();
  }

  static onError(error) {
    print("the error is $error.detail");
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}
