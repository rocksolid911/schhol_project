import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Auth/models/User.dart';
import 'package:phygitalz_project_1/Auth/models/Userprovider.dart';
import 'package:phygitalz_project_1/Auth/models/auth.dart';
import 'package:phygitalz_project_1/Auth/widgets/textfield_decoration.dart';
import 'package:phygitalz_project_1/Auth/widgets/validator.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  AppConfig _appConfig;
  bool val = false;
  //bool _enableBtn = false;
  //bool _enableBtn2 = false;
  String _username, _password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<Color> _colors = [Color(0xFFEF681F), Color(0xFF752FD9)];
  List<double> _stops = [0.0, 0.7];

  //set enableBtn(bool value) => setState(() => _enableBtn = value);

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
   // var map = context.read<AuthProvider>();

    var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Authenticating ... Please wait")
      ],
    );
    var doLogin = () {
      //var formKey;
      final form = formKey.currentState;

      if (form.validate()) {
        form.save();
        final Future<Map<String, dynamic>> successfulMessage =
        auth.login(_username, _password);


        successfulMessage.then((response) {
          if (response['status']) {
            User user = response['user'];
            print(user);
            Provider.of<UserProvider>(context, listen: false).setUser(user);
            Navigator.pushReplacementNamed(context, '/HssScreen');
          } else if (response['status']==false){
            // Flushbar(
            //   title: "Failed Login",
            //   message: response['message']['message'].toString(),
            //   duration: Duration(seconds: 3),
            // ).show(context);
            //TODO implement non assigned email id page
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogIn()));
          }
        });
      } else {
        print("form is invalid");
      }
    };


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
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              autofocus: false,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: validateEmail,
                              onSaved: (value) => _username = value,
                              decoration: buildInputDecoration(
                                  "Confirm Email", Icons.email,"email"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 20),
                            child: TextFormField(
                              autofocus: false,
                              obscureText: true,
                              validator: (value) => value.isEmpty
                                  ? "Please enter password"
                                  : null,
                              onSaved: (value) => _password = value,
                              decoration: buildInputDecoration(
                                  "Confirm password", Icons.lock,"password"),
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
                                        color:
                                            val ? Colors.white : Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2),
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
                                    Navigator.pushNamed(
                                        context, '/forgotpasswd');
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _appConfig.rH(8),
                          ),
                          auth.loggedInStatus==Status.NotLoggedIn
                              ? longButtons("Login", doLogin)
                              : loading,
                        ],
                      ),
                    ),
                  ),
                  top: _appConfig.rH(50),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
