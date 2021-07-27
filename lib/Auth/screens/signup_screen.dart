import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:phygitalz_project_1/config/app_config.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AppConfig _appConfig;
  List<Color> _colors = [Color(0xFFEF681F), Color(0xFF752FD9)];
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return SafeArea(
      child: Scaffold(
        //put singlechildscrollview on top to scroll everything
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: _colors,
                stops: _stops,
              ),
            ),
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  child: Container(
                    // color: Colors.yellowAccent,
                    child: SvgPicture.asset(
                        'assets/images/Phygitalz_P_Symbol.svg'),
                  ),
                  bottom: _appConfig.rH(27),
                  right: _appConfig.rW(55),
                ),
                Positioned(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SignUp",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "SignUp with registred email ID",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  top: _appConfig.rH(20),
                  left: _appConfig.rW(10),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      // color: Colors.white,
                      constraints: BoxConstraints(
                          maxWidth: _appConfig.rW(100),
                          maxHeight: _appConfig.rH(42)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "sign up with",
                            style: TextStyle(color: Colors.white),
                          ),
                          //Google sign up
                          Container(
                            height: _appConfig.rH(6.5),
                            width: _appConfig.rW(85),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createacc');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      constraints: BoxConstraints(maxHeight: _appConfig.rH(10),maxWidth: _appConfig.rW(10)),
                                      child: Image(image: AssetImage('assets/images/google_logo.png'),)
                                    ),
                                  ),
                                  Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                            ),
                          ),
                          //apple sign up
                          Container(
                            height: _appConfig.rH(6.5),
                            width: _appConfig.rW(85),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createacc');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        constraints: BoxConstraints(maxHeight: _appConfig.rH(10),maxWidth: _appConfig.rW(8)),
                                        child: Image(image: AssetImage('assets/images/apple_logo.png'),),
                                    ),
                                  ),
                                  Text(
                                    "Apple",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                            ),
                          ),
                          //facebook sign up
                          Container(
                            height: _appConfig.rH(6.5),
                            width: _appConfig.rW(85),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createacc');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0,left: 25.0),
                                    child: Container(
                                        constraints: BoxConstraints(maxHeight: _appConfig.rH(12),maxWidth: _appConfig.rW(12)),
                                        child: Image(image: AssetImage('assets/images/facebook_logo.png'),),
                                    ),
                                  ),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                            ),
                          ),
                          //email sign up
                          Container(
                            height: _appConfig.rH(6.5),
                            width: _appConfig.rW(85),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createacc');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        constraints: BoxConstraints(maxHeight: _appConfig.rH(8),maxWidth: _appConfig.rW(8)),
                                        child: Image(image: AssetImage('assets/images/email_logo.jpeg'),)
                                    ),
                                  ),
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "Skip",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  top: _appConfig.rH(40),
                  left: _appConfig.rW(5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
