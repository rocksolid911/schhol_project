import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Common/widgets/login_textfield.dart';

import 'package:phygitalz_project_1/config/app_config.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  AppConfig _appConfig;
  bool val = false;
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  GlobalKey<FormState> _form2 = GlobalKey<FormState>();
  GlobalKey<FormState> _form3 = GlobalKey<FormState>();
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
                          "CreateAccount",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "CreateAccount with registred email ID",
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
                     //color: Colors.yellowAccent,
                    constraints: BoxConstraints(
                        maxWidth: _appConfig.rW(100),
                        maxHeight: _appConfig.rH(60)),
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 20),
                          child: CustomTextField(
                            formtype: 'passwd',
                            labeltextpasswd: 'Password',
                            icon: Icons.password_outlined,
                            key: _form3,
                          ),
                        ),
                        SizedBox(
                          height: _appConfig.rH(4),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: _appConfig.rWP(17.0), bottom: _appConfig.rHP(2)),
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
                                "Accept Terms and Condition",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: _appConfig.rH(10),
                        // ),
                        Container(
                          height: _appConfig.rH(8),
                          width: _appConfig.rW(80),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
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
