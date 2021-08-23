import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

YYDialog YYAlertDialogPopMenu1(BuildContext context) {

  BuildContext context;

  return YYDialog().build()
    ..width = 250
    ..height = 120
    ..borderRadius = 14.0
    ..gravity = Gravity.center
    ..barrierColor = Colors.transparent
    ..margin = EdgeInsets.only(top: 80, right: 20)
    ..barrierColor = Colors.black26
    ..gravityAnimationEnable = true
    ..duration = Duration(milliseconds: 200)
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
  // ..text(
  //   padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
  //   text: "Edit Libary",
  //   fontSize: 16.0,
  //   color: Colors.grey[700],
  // )
  // ..text(
  //   padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
  //   text: "Read History",
  //   fontSize: 16.0,
  //   color: Color(0xFFFF6B2D),
  // )
    ..widgetList = [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 16.0, 10.0, 10.0),
        child: Material(
          child: InkWell(
            child: Text(
              "Add Self Task",
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
            onTap: (){
              print("yappp");
              Navigator.pushNamed(context, "/meetlink");
            },
            splashColor: Colors.greenAccent,
          ),
        ),
      ),
      Divider(
        height: 5,
        thickness: 2,
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
        child: Material(
          child: InkWell(
            child: Text(
              "Update meeting Link",
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w100,
                  fontSize: 18),
            ),
            onTap: (){},
            splashColor: Colors.greenAccent,
          ),
        ),
      ),
    ]
    ..show();
}
