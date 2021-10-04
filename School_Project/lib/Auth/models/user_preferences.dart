import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import 'User.dart';

class UserPreferences {
  //static SharedPreferences prefs;
  UserPreferences._privateConstructor();
  static final UserPreferences instance =
  UserPreferences._privateConstructor();
   saveUser(User user) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt("user_Id", user.userId);
    print(user.userId);

    prefs.setString("name", user.name);
    //TODO nothing should return null
    prefs.setString("method", user.method.toString());
    prefs.setString("msg", user.msg);
    prefs.setString("email_Id", user.emailId);
     print(user.emailId);
    //return prefs.commit();
    //return true;
  }

  Future<User> getUser() async {
    //Future.delayed(const Duration(milliseconds: 200), (){});
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    int userId = prefs.getInt("user_Id");
    print(userId);
    String name = prefs.getString("name");
    String method = prefs.getString("method");
    String msg = prefs.getString("msg");
    String emailId = prefs.getString("email_Id");

    return User(
      emailId:emailId,
      userId: userId,
      name: name,
      method: method,
      msg: msg ,
    );

  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("name");
    prefs.remove("user_Id");
    prefs.remove("method");
    prefs.remove("msg");
    prefs.remove("email_Id");
  }
}
