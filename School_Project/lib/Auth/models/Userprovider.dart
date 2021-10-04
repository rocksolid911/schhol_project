import 'package:flutter/foundation.dart';
import 'User.dart';

class UserProvider with ChangeNotifier {
  User _user = new User();

  User get user => _user;

  void setUser(User user) async{
    await Future.delayed(const Duration(milliseconds: 200), (){});
    _user = user;
    //print("hello"+_user.userId.toString());
    notifyListeners();
  }

}