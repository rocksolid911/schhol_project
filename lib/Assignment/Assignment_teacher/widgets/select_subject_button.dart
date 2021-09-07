import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class SubjectButton extends StatefulWidget {
  const SubjectButton({Key key}) : super(key: key);

  @override
  _SubjectButtonState createState() => _SubjectButtonState();
}

class _SubjectButtonState extends State<SubjectButton> {
  AppConfig _appConfig;
  bool homeworkbutton = false;
  bool labrecordButton = false;
  bool portfoliobutton = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Wrap(
        direction: Axis.horizontal,
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.spaceBetween,
        children:[ CustomAnimatedButton(
          height: _appConfig.rH(4.5),
          width: _appConfig.rW(24),
          text: "Math",
          startcolor: 0xFFDF00AD,
          midcolor: 0xFFDF0075,
          endcolor: 0xFFDF003D,
          radius: _appConfig.rW(5),
          activecolor: Colors.white,
          inactivecolor: Colors.pinkAccent,
          selected: homeworkbutton,
          onTap: (){
            setState(() {
              homeworkbutton = true;
              labrecordButton = false;

              portfoliobutton = false;
            });
          }, fntsize: 12,
        ),
        CustomAnimatedButton(
          height: _appConfig.rH(4.5),
          width: _appConfig.rW(28),
          text: "English",
          selected: labrecordButton,
          startcolor: 0xFFDF00AD,
          midcolor: 0xFFDF0075,
          endcolor: 0xFFDF003D,
          radius: _appConfig.rW(5),
          activecolor: Colors.white,
          inactivecolor: Colors.pinkAccent,
          onTap: (){
            setState(() {
              homeworkbutton = false;
              labrecordButton = true;

              portfoliobutton = false;
            });
          }, fntsize: 12,
        ),
        CustomAnimatedButton(
          height: _appConfig.rH(4.5),
          width: _appConfig.rW(28),
          text: "Physics",
          selected: portfoliobutton,
          startcolor: 0xFFDF00AD,
          midcolor: 0xFFDF0075,
          endcolor: 0xFFDF003D,
          radius: _appConfig.rW(5),
          activecolor: Colors.white,
          inactivecolor: Colors.pinkAccent,
          onTap: (){
            setState(() {
              homeworkbutton = false;
              labrecordButton = false;

              portfoliobutton = true;
            });
          }, fntsize: 12,
        ),
        CustomAnimatedButton(
          height: _appConfig.rH(4.5),
          width: _appConfig.rW(30),
          text: "Chemistry",
          selected: portfoliobutton,
          startcolor: 0xFFDF00AD,
          midcolor: 0xFFDF0075,
          endcolor: 0xFFDF003D,
          radius: _appConfig.rW(5),
          activecolor: Colors.white,
          inactivecolor: Colors.pinkAccent,
          onTap: (){
            setState(() {
              homeworkbutton = false;
              labrecordButton = false;

              portfoliobutton = true;
            });
          }, fntsize: 12,
        ),
      ]);

  }
}
