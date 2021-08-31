import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectTypeAssignment extends StatefulWidget {
  const SelectTypeAssignment({Key key}) : super(key: key);

  @override
  _SelectTypeAssignmentState createState() => _SelectTypeAssignmentState();
}

class _SelectTypeAssignmentState extends State<SelectTypeAssignment> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Container(
      height: _appConfig.rH(9),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 6),
              spreadRadius: 2,
              blurRadius: 6)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: _appConfig.rHP(8.1),
        ),
        child: Row(
          children: [
            Container(
              child: Center(
                child: Text(
                  "Timetable",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w900),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [HexColor("#d64575"), HexColor("#8522a3")]),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: _appConfig.rH(3),
              width: _appConfig.rW(19.5),
            ),
            SizedBox(width: _appConfig.rW(4)),
            Container(
              child: Center(
                child: Text(
                  "Lab record",
                  style: TextStyle(
                      color: HexColor("#d64575"),
                      fontSize: 9,
                      fontWeight: FontWeight.w900),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor("#d64575"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: _appConfig.rH(3),
              width: _appConfig.rW(19.5),
            ),
            SizedBox(width: _appConfig.rW(4)),
            Container(
              child: Center(
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                      color: HexColor("#d64575"),
                      fontSize: 9,
                      fontWeight: FontWeight.w900),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor("#d64575"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: _appConfig.rH(3),
              width: _appConfig.rW(19.5),
            ),
          ],
        ),
      ),
    );
  }
}
