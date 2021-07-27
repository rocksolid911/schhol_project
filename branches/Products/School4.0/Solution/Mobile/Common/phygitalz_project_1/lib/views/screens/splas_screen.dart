import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


import 'package:phygitalz_project_1/config/app_config.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AppConfig _appConfig;
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogIn(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
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
