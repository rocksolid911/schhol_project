import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:phygitalz_project_1/views/widgets/login_textfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  AppConfig _appConfig;
  bool val = false;
  bool  _enableBtn = false;
  bool _enableBtn2 = false;
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  GlobalKey<FormState> _form2 = GlobalKey<FormState>();
  List<Color> _colors = [Color(0xFFEF681F), Color(0xFF752FD9)];
  List<double> _stops = [0.0, 0.7];
  //set enableBtn(bool value) => setState(() => _enableBtn = value);

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
                          "LogIn",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Login with registred email ID",
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
                  child: Container(
                    // color: Colors.white,
                    constraints: BoxConstraints(
                        maxWidth: _appConfig.rW(100),
                        maxHeight: _appConfig.rH(55)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: CustomTextField(
                            formtype: 'email',
                            lebeltextemail: 'Email',
                            icon: Icons.email,
                            key: _form,
                            emailvalid: (value){
                             setState(() {
                               _enableBtn = value;
                               //_enableBtn=false;
                              // print(_enableBtn);
                             }

                             );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 20),
                          child: CustomTextField(
                            formtype: 'passwd',
                            labeltextpasswd: 'Password',
                            icon: Icons.password_outlined,
                            key: _form2,
                            passwdvalid: (value){setState(() {
                              _enableBtn2=value;
                            });},

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      val ? Colors.white : Colors.transparent,
                                  border: Border.all(
                                    color: val ? Colors.white : Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2
                                  ),
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.all(2.5),
                                  onPressed: () {
                                    setState(() {
                                      val = !val;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.check,
                                    size: 20,
                                  ),
                                  color:
                                      val ? Colors.black : Colors.transparent,
                                  //constraints: BoxConstraints(maxWidth: 10,maxHeight: 10),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "save password",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              GestureDetector(
                                child: Text(
                                  "Forgot password ?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/forgotpasswd');
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: _appConfig.rH(4),
                        ),
                        Container(
                          height: _appConfig.rH(6),
                          width: _appConfig.rW(40),
                          child: ElevatedButton(
                            // onPressed: () {
                            //    Navigator.pushNamed(context, '/createacc');
                            //
                            // },
                            onPressed: _enableBtn&&_enableBtn2?()=>Navigator.pushNamed(context, '/circular'):null,
                           // onPressed: _form.currentState.validate()?() =>  Navigator.pushNamed(context, '/createacc'):null,
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  // side: BorderSide(color: Colors.red)
                                ),
                              ),
                              backgroundColor: _enableBtn&&_enableBtn2?MaterialStateProperty.all<Color>(
                                  Colors.white):MaterialStateProperty.all<Color>(
                                  Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _appConfig.rH(2),
                        ),
                        Container(
                          height: _appConfig.rH(6),
                          width: _appConfig.rW(60),
                          child: ElevatedButton(
                            // onPressed: () {
                            //    Navigator.pushNamed(context, '/createacc');
                            //
                            // },
                            onPressed: ()=>Navigator.pushNamed(context, '/createacc'),
                            // onPressed: _form.currentState.validate()?() =>  Navigator.pushNamed(context, '/createacc'):null,
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  // side: BorderSide(color: Colors.red)
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _appConfig.rH(2),
                        ),
                        Container(
                          height: _appConfig.rH(6),
                          width: _appConfig.rW(80),
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
                                  "Continiue with Google",
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
                      ],
                    ),
                  ),
                  top: _appConfig.rH(40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
