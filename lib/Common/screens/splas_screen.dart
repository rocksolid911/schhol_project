import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Auth/models/User.dart';
import 'package:phygitalz_project_1/Auth/models/Userprovider.dart';
import 'package:phygitalz_project_1/Auth/screens/login_screen.dart';
import 'package:phygitalz_project_1/Home/Screens/Home_screen.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  final User user;
  SplashScreen({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AppConfig _appConfig;
  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
startTimer();
    super.didChangeDependencies();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<UserProvider>(context).setUser(widget.user);
    //print(user.emailId);
    _appConfig = AppConfig(context);
    //Navigator.pushNamed(context, "/login");
    // Timer(
    //   Duration(seconds: 5),
    //   () => widget.user==null?Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeScreenStudent(),
    //     ),
    //   ):Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => LogIn(),
    //     ),
    //   ),
    // );
    return Scaffold(
      key: _scaffoldKey,
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

  void startTimer() {
    Timer(
      Duration(seconds: 2),
        (){navigateUser();}
    );
  }

  Future<void>  navigateUser() async {
    await Future.delayed(const Duration(milliseconds: 200), (){});
    widget.user == null
        ? Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LogIn(),
            ),
            (Route<dynamic> route) => false,
          )
        : Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreenStudent(),
            ),
          (Route<dynamic> route) => false,
          );
  }
}
