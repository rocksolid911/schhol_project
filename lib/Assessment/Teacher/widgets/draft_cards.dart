import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



import 'package:gradientbutton/appconfig.dart';

class Draftcard extends StatefulWidget {
  @override
  _DraftcardState createState() => _DraftcardState();
}

class _DraftcardState extends State<Draftcard> {
  String myobject;
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
_appConfig = AppConfig(context);
            return Stack(children: [
              Container(
                height: _appConfig.rH(59.3),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (builder, context) {
                      return Container(
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Container(
                                height: _appConfig.rH(20),
                                width: _appConfig.rW(85.5),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/images/Subject_Icon_W.Name_Maths.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(3.5),
                                          left: _appConfig.rWP(16)),
                                      child: Text("math",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(3),
                                            left: _appConfig.rWP(62)),
                                        child: SvgPicture.asset(
                                            "assets/images/Preview_icon _Assignment.svg")),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(73)),
                                        child: SvgPicture.asset(
                                          "assets/images/Delete Icon.svg",
                                          height: _appConfig.rH(3),
                                          width: _appConfig.rW(3),
                                        )),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(7),
                                          bottom: _appConfig.rWP(5)),
                                      child: Divider(
                                        thickness: 0.5,
                                        endIndent: 17,
                                        indent: 17,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(10),
                                              left: _appConfig.rWP(5),
                                              bottom: _appConfig.rWP(5)),
                                          child: Text("Assignment Name",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9)),
                                        ),

                                        //  color: Color(0xFF2E2E2E),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(10),
                                              left: _appConfig.rWP(2),
                                              bottom: _appConfig.rWP(5)),
                                          child: Text(
                                              "Assesment Name",
                                              style: TextStyle(
                                                  color: Color(0xFF2E2E2E),
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9)),
                                        ),
                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(13),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(0)),
                                      child: Row(
                                        children: [
                                          Text("Answering Type",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 9,
                                                color: Colors.grey,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(0),
                                                left: _appConfig.rWP(6),
                                                bottom: _appConfig.rWP(0)),
                                            child: Text(
                                                "Answering type",
                                                style: TextStyle(
                                                    color: Color(0xFF2E2E2E),
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 9)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(18),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(0)),
                                      child: Row(
                                        children: [
                                          Text("Class",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 9,
                                                color: Colors.grey,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(0),
                                                left: _appConfig.rWP(1),
                                                bottom: _appConfig.rWP(0)),
                                            child: Text("10",
                                                style: TextStyle(
                                                    color: Color(0xFF2E2E2E),
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 9)),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(18),
                                          left: _appConfig.rWP(49)),
                                      child: Row(
                                        children: [
                                          Text("Exam Type",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9,
                                                  color: Colors.grey)),
                                          SizedBox(width: _appConfig.rW(2)),
                                          Text("Summative",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ]);
          }
        }
