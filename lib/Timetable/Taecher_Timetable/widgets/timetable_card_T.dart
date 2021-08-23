import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class TeacherTimeCard extends StatefulWidget {
  const TeacherTimeCard({Key key}) : super(key: key);

  @override
  _TeacherTimeCardState createState() => _TeacherTimeCardState();
}

class _TeacherTimeCardState extends State<TeacherTimeCard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    YYDialog.init(context);
    _appConfig = AppConfig(context);
    return Column(
      children: [
        CustomPaint(
          foregroundPainter: Three(),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Container(
              height: _appConfig.rH(22),
              width: _appConfig.rW(61.5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: _appConfig.rWP(2), top: _appConfig.rHP(1.5)),
                        child: Text(
                          "10.30AM-11.1AM",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: _appConfig.rWP(17), top: _appConfig.rHP(1)),
                        child: IconButton(
                          icon: Icon(
                            Icons.visibility_outlined,
                          ),
                          iconSize: 20,
                          color: Colors.pinkAccent,
                          splashColor: Colors.greenAccent,
                          onPressed: () {
                            Navigator.pushNamed(context, "/teacherpop");
                          },
                          splashRadius: _appConfig.rH(2),
                          padding: EdgeInsets.zero,
                          constraints:
                              BoxConstraints(maxHeight: 20, maxWidth: 20),
                        ),
                      ),
                      SizedBox(
                        width: _appConfig.rW(2),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: _appConfig.rHP(1),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.more_vert_rounded,
                          ),
                          iconSize: 20,
                          color: Colors.pinkAccent,
                          splashColor: Colors.greenAccent,
                          onPressed: () {
                            YYAlertDialogPopMenu1(context);
                          },
                          splashRadius: _appConfig.rH(2),
                          padding: EdgeInsets.zero,
                          constraints:
                              BoxConstraints(maxHeight: 20, maxWidth: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 13, top: 3),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 3,
                      left: 10,
                    ),
                    child: Table(
                      children: [
                        TableRow(children: [
                          Row(
                            children: [
                              Text(
                                "Teacher Name",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#707782")),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "Lisa",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
                              )
                            ],
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Text(
                                  "Room Number",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor("#707782")),
                                ),
                                SizedBox(width: 35),
                                Text(
                                  "33",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Text(
                                  "Schedule Meeting",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor("#707782")),
                                ),
                                SizedBox(width: 17),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey),
                                      child: Icon(
                                        Icons.videocam,
                                        color: Colors.white,
                                        size: 11,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 23),
                    child: Column(
                      children: [
                        Text(
                          "Students to bring their blue ink bottle & few",
                          style: TextStyle(
                              fontSize: 7.5,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#b0adac")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 117),
                          child: Text(
                            "white papers",
                            style: TextStyle(
                                fontSize: 7.5,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#b0adac")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }
  YYDialog YYAlertDialogPopMenu1(BuildContext context) {

   // BuildContext context;

    return YYDialog().build(context)
      ..width = 250
      ..height = 120
      ..borderRadius = 14.0
      ..gravity = Gravity.center
      ..barrierColor = Colors.transparent
      ..margin = EdgeInsets.only(top: 80, right: 20)
      ..barrierColor = Colors.black26
      ..gravityAnimationEnable = true
      ..duration = Duration(milliseconds: 200)
      
      //..dismiss()
      //..barrierDismissible=false
      //..dismissCallBack =(){Navigator.pop(context);}
      //..showCallBack = (){Navigator.pop(context);}
    ..useRootNavigator=true
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      }

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
                Navigator.pop(context);
                Navigator.pushNamed(context, "/activity");

                //YYDialog().showCallBack();
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
              onTap: (){

               //pop should comes first to dissmiss dialog after use
                Navigator.pop(context);
                Navigator.pushNamed(context, "/meetlink");

              },
              splashColor: Colors.greenAccent,
            ),
          ),
        ),
      ]
      ..show();
  }
}



class One extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = HexColor("#f55f5f")
      ..strokeCap = StrokeCap.butt;
    canvas.drawLine(
        Offset(4, size.height - 119), Offset(4, size.height - 45), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Two extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = HexColor("#188c60")
      ..strokeCap = StrokeCap.butt;
    canvas.drawLine(
        Offset(4, size.height - 119), Offset(4, size.height - 45), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Three extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = HexColor("#faa107")
      ..strokeCap = StrokeCap.butt;
    canvas.drawLine(
        Offset(4, size.height - 119), Offset(4, size.height - 45), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
