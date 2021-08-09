import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Auth/models/User.dart';
import 'package:phygitalz_project_1/Auth/models/Userprovider.dart';
import 'package:phygitalz_project_1/Auth/models/user_preferences.dart';
import 'package:phygitalz_project_1/Auth/screens/login_screen.dart';

import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  final User user;
  SplashScreen({Key key, this.user,   }) : super(key: key);

   AppConfig _appConfig;


  @override
  Widget build(BuildContext context) {
     Provider.of<UserProvider>(context).setUser(user);
     //print(user.emailId);
    _appConfig = AppConfig(context);
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogIn(),
        ),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Container(
                //color: Colors.yellowAccent,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Opacity(
                  opacity: 0.5,
                  child:
                      SvgPicture.asset('assets/images/Phygitalz_P_Symbol.svg'),
                ),
              ),
              bottom: _appConfig.rH(12),
              right: _appConfig.rW(48),
            ),
            Positioned(
              child: Container(
                // color: Colors.green,
                height: MediaQuery.of(context).size.height - 200,
                width: _appConfig.rW(65),
                child: SvgPicture.asset('assets/images/Phygitalz_Logo.svg'),
              ),
              top: 0,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
