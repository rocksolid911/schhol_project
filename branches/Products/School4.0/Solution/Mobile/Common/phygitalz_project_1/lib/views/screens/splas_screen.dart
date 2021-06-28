import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/views/widgets/circle_painter.dart';
import 'package:phygitalz_project_1/app_config.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   AppConfig _appConfig;
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 5),
  //       () => Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => LogIn(),
  //           )));
  // }

  @override
  Widget build(BuildContext context) {
    _appConfig =AppConfig(context);
    //double size = MediaQuery.of(context).size.width;
    double size = 50;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: <Widget>[
            // Container(
            //   color: Colors.deepPurpleAccent,
            // ),
            Positioned(
              child: Container(
                color: Colors.yellowAccent,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // child: CustomPaint(
                //   size: Size(
                //       size,
                //       (size * 1.9021609298457238)
                //           .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                //   painter: RPSCustomPainter(),
                // ),
                // child: CustomPaint(
                //   size: Size(339.067, 644.96),
                //   painter: RPSCustomPainter(),
                // ),
                child: SvgPicture.asset('assets/images/Phygitalz_P_Symbol.svg'),
              ),
              top: 0,
              right: _appConfig.rW(30),
            )
          ],
        ),
      ),
    );
  }
}
