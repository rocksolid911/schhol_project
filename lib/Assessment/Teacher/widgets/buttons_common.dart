import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class button extends StatefulWidget {
  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  AppConfig _appConfig;
  bool Classs = false;
  bool Periodic = false;
  bool Summative = false;

  bool term1 = false;
  bool term2 = false;
  bool term3 = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: _appConfig.rH(12.1),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 6),
            spreadRadius: 2,
            blurRadius: 6)
      ]),
      child: Stack(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: _appConfig.rHP(8), left: _appConfig.rWP(5)),
              child: Text("Select Type",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      color: Colors.grey)),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(1), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(18),
                text: "Class",
                startcolor: 0xFFD64575,
                midcolor: 0xFFD64570,
                endcolor: 0xFF8522A3,
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: Classs,
                onTap: () {
                  setState(() {
                    Classs = true;
                    Periodic = false;
                    Summative = false;
                  });
                },
                fntsize: 8,
              ),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(1), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(19),
                text: "Periodic",
                startcolor: (0xFFD64575),
                midcolor: (0xFFD64570),
                endcolor: (0xFF8522A3),
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: Periodic,
                onTap: () {
                  setState(() {
                    Classs = false;
                    Periodic = true;
                    Summative = false;
                  });
                },
                fntsize: 8,
              ),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(1), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(20),
                text: "Summative",
                startcolor: (0xFFD64575),
                midcolor: (0xFFD64570),
                endcolor: (0xFF8522A3),
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: Summative,
                onTap: () {
                  setState(() {
                    Classs = false;
                    Periodic = false;
                    Summative = true;
                  });
                },
                fntsize: 8,
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(5), left: _appConfig.rWP(5)),
              child: Text("Select Term",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      color: Colors.grey)),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(7), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(18),
                text: "Term 1",
                startcolor: (0xFFD64575),
                midcolor: (0xFFD64570),
                endcolor: (0xFF8522A3),
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: term1,
                onTap: () {
                  setState(() {
                    term1 = true;
                    term2 = false;
                    term3 = false;
                  });
                },
                fntsize: 8,
              ),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(7), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(19),
                text: "Term 2",
                startcolor: (0xFFD64575),
                midcolor: (0xFFD64570),
                endcolor: (0xFF8522A3),
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: term2,
                onTap: () {
                  setState(() {
                    term1 = false;
                    term2 = true;
                    term3 = false;
                  });
                },
                fntsize: 8,
              ),
            ),
            SizedBox(
              width: _appConfig.rW(4),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _appConfig.rHP(7), left: _appConfig.rWP(0)),
              child: CustomAnimatedButton(
                height: _appConfig.rH(3.6),
                width: _appConfig.rW(20),
                text: "Term 3",
                startcolor: (0xFFD64575),
                midcolor: (0xFFD64570),
                endcolor: (0xFF8522A3),
                radius: _appConfig.rW(5),
                activecolor: Colors.white,
                inactivecolor: Color(0xFFD64570),
                selected: term3,
                onTap: () {
                  setState(() {
                    term1 = false;
                    term2 = false;
                    term3 = true;
                  });
                },
                fntsize: 8,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
