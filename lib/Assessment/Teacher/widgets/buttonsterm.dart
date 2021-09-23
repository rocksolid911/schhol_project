
import 'package:custombutton/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermButtons extends StatefulWidget {
  const TermButtons({Key key}) : super(key: key);

  @override
  _TermButtonsState createState() =>
      _TermButtonsState();
}

class _TermButtonsState extends State<TermButtons> {
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
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: _appConfig.rH(14),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 6),
                    spreadRadius: 2,
                    blurRadius: 6)
              ]),
              child: Column(children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(8.0,8.0,2,4.0),
                  child: Row(
                    children: [
                      // Text("Select Type",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.w900,
                      //         fontSize: 10,
                      //         color: Colors.grey)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "Homework",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: Classs,
                        onTap: () {
                          setState(() {
                             Classs = true;
                             Periodic = false;
                             Summative = false;
                            print("value of homework:$Classs");
                          });

                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "LabRecord",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: Periodic,
                        onTap: () {
                          setState(() {
                             Classs = false;
                             Periodic = true;
                             Summative = false;
                            print("value of lab:$Periodic");
                          });
                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "Portfolio",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: Summative,
                        onTap: () {
                          setState(() {
                             Classs = false;
                             Periodic = false;
                             Summative = true;
                            print("value of port :$Summative");
                          });
                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _appConfig.rH(1),left: _appConfig.rHP(3)),
                  child: Row(
                    children: [
                      // Text("Select Term",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.w900,
                      //         fontSize: 10,
                      //         color: Colors.grey)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "Term 1",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: term1,
                        onTap: () {
                          setState(() {
                             term1 = true;
                             term2 = false;
                             term3 = false;

                            print("value of homework:$term1");
                          });

                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "Term 2",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: term2,
                        onTap: () {
                          setState(() {
                             term1 = false;
                             term2 = true;
                             term3 = false;

                            print("value of lab:$term2");
                          });
                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      CustomButton(
                        bdrRadius: 20,
                        text: "Term 3",
                        startcolor: (0xFFD73865),
                        midcolor: (0xFFA40DAB),
                        endcolor: (0xFF8A09B1),
                        selected: term3,
                        onTap: () {
                          setState(() {
                             term1 = false;
                             term2 = false;
                             term3 = true;

                            print("value of port :$term3");
                          });
                        },
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                height: _appConfig.rH(49),
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
                                height: _appConfig.rH(19),
                                width: _appConfig.rW(89),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/Maths.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(3.2),
                                          left: _appConfig.rWP(15.5)),
                                      child: Text("Maths",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(55)),
                                        child: SvgPicture.asset(
                                          "assets/penn.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(64)),
                                        child: SvgPicture.asset(
                                          "assets/Previewicon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(75)),
                                        child: SvgPicture.asset(
                                          "assets/Delete Icon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
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

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(9),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(5)),
                                      child: Text(
                                          "Complete the assignment on Algebra Topic.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10.5)),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(16),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(2)),
                                      child: Row(
                                        children: [
                                          Text("Class",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("10",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Text("Section",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("A",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _appConfig.rWP(29)),
                                            child: Row(
                                              children: [
                                                Text("Due ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10,
                                                        color: Colors.grey)),
                                                Text("21 Oct 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
