import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class TimetableCard extends StatefulWidget {
  const TimetableCard({Key key}) : super(key: key);

  @override
  _TimetableCardState createState() => _TimetableCardState();
}

class _TimetableCardState extends State<TimetableCard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Column(
      children: [
        CustomPaint(
          foregroundPainter: One(),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Container(
              height: _appConfig.rH(20),
              width: _appConfig.rW(61.5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: _appConfig.rHP(1),
                      right: _appConfig.rWP(28),
                      //left: _appConfig.rWP(1),
                    ),
                    child: Text(
                      "10.30AM-11.15AM",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),

                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        right: _appConfig.rWP(3.2),
                        left: _appConfig.rWP(3.2),
                        top: _appConfig.rHP(0)),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _appConfig.rHP(0.5),
                        left: _appConfig.rWP(3)),
                    child: Table(
                      children: [
                        TableRow(children: [
                          Row(
                            children: [
                              Text(
                                "Teacher Name",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight:
                                    FontWeight.bold,
                                    color: HexColor(
                                        "#707782")),
                              ),
                              SizedBox(
                                  width: _appConfig
                                      .rWP(9.5)),
                              Text(
                                "Lisa",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 11),
                              )
                            ],
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: _appConfig.rHP(0.5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Room Number",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight:
                                      FontWeight
                                          .bold,
                                      color: HexColor(
                                          "#707782")),
                                ),
                                SizedBox(
                                  width: _appConfig
                                      .rWP(10),
                                ),
                                Text(
                                  "43",
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight
                                          .bold,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ]),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top:
                                _appConfig.rHP(0.4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Planned Meeting",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight:
                                      FontWeight
                                          .bold,
                                      color: HexColor(
                                          "#707782"),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Padding(
                                    padding:
                                    const EdgeInsets
                                        .only(
                                      right: 30,
                                    ),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape
                                              .circle,
                                          color: Colors
                                              .indigoAccent),
                                      child: Icon(
                                        Icons.videocam,
                                        color: Colors
                                            .white,
                                        size: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, right: 23),
                    child: Column(
                      children: [
                        Text(
                          "Students to bring their blue ink bottle & few",
                          style: TextStyle(
                            //decoration: TextDecoration(),
                              fontSize: 7.5,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              HexColor("#b0adac")),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(
                              right: 117),
                          child: Text(
                            "white papers",
                            style: TextStyle(
                                fontSize: 7.5,
                                fontWeight:
                                FontWeight.bold,
                                color: HexColor(
                                    "#b0adac")),
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
        SizedBox(
          height: 6,
        ),
        // CustomPaint(
        //   foregroundPainter: Two(),
        //   child: Card(
        //     elevation: 3,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(10),
        //             topRight: Radius.circular(10),
        //             bottomRight: Radius.circular(10))),
        //     child: Container(
        //       height: _appConfig.rH(19),
        //       width: _appConfig.rW(61.5),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 top: 12, right: 82),
        //             child: Text(
        //               "10.30AM-11.15AM",
        //               style: TextStyle(
        //                   fontSize: 11,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 left: 12, right: 12, top: 3),
        //             child: Divider(
        //               thickness: 1,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //               top: 3,
        //               left: 10,
        //             ),
        //             child: Table(
        //               children: [
        //                 TableRow(children: [
        //                   Row(
        //                     children: [
        //                       Text(
        //                         "Teacher Name",
        //                         style: TextStyle(
        //                             fontSize: 11,
        //                             fontWeight:
        //                             FontWeight.bold,
        //                             color: HexColor(
        //                                 "#707782")),
        //                       ),
        //                       SizedBox(width: 35),
        //                       Text(
        //                         "Lisa",
        //                         style: TextStyle(
        //                             fontWeight:
        //                             FontWeight.bold,
        //                             fontSize: 11),
        //                       )
        //                     ],
        //                   ),
        //                 ]),
        //                 TableRow(children: [
        //                   Padding(
        //                     padding:
        //                     const EdgeInsets.only(
        //                         top: 4),
        //                     child: Row(
        //                       children: [
        //                         Text(
        //                           "Room Number",
        //                           style: TextStyle(
        //                               fontSize: 11,
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               color: HexColor(
        //                                   "#707782")),
        //                         ),
        //                         SizedBox(width: 35),
        //                         Text(
        //                           "23",
        //                           style: TextStyle(
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               fontSize: 11),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ]),
        //                 TableRow(children: [
        //                   Padding(
        //                     padding:
        //                     const EdgeInsets.only(
        //                         top: 4),
        //                     child: Row(
        //                       children: [
        //                         Text(
        //                           "Schedule Meeting",
        //                           style: TextStyle(
        //                               fontSize: 11,
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               color: HexColor(
        //                                   "#707782")),
        //                         ),
        //                         SizedBox(width: 17),
        //                         Padding(
        //                           padding:
        //                           const EdgeInsets
        //                               .only(
        //                               right: 30),
        //                           child: Container(
        //                               width: 20,
        //                               height: 20,
        //                               decoration: BoxDecoration(
        //                                   shape: BoxShape
        //                                       .circle,
        //                                   color: Colors
        //                                       .grey),
        //                               child: Icon(
        //                                 Icons.videocam,
        //                                 color: Colors
        //                                     .white,
        //                                 size: 11,
        //                               )),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ]),
        //               ],
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 top: 8, right: 23),
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "Students to bring their blue ink bottle & few",
        //                   style: TextStyle(
        //                       fontSize: 7.5,
        //                       fontWeight:
        //                       FontWeight.bold,
        //                       color:
        //                       HexColor("#b0adac")),
        //                 ),
        //                 Padding(
        //                   padding:
        //                   const EdgeInsets.only(
        //                       right: 117),
        //                   child: Text(
        //                     "white papers",
        //                     style: TextStyle(
        //                         fontSize: 7.5,
        //                         fontWeight:
        //                         FontWeight.bold,
        //                         color: HexColor(
        //                             "#b0adac")),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 6,
        // ),
        // CustomPaint(
        //   foregroundPainter: Three(),
        //   child: Card(
        //     elevation: 3,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(10),
        //             topRight: Radius.circular(10),
        //             bottomRight: Radius.circular(10))),
        //     child: Container(
        //       height: _appConfig.rH(19),
        //       width: _appConfig.rW(61.5),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 top: 12, right: 82),
        //             child: Text(
        //               "10.30AM-11.15AM",
        //               style: TextStyle(
        //                   fontSize: 11,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 left: 12, right: 13, top: 3),
        //             child: Divider(
        //               thickness: 1,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //               top: 3,
        //               left: 10,
        //             ),
        //             child: Table(
        //               children: [
        //                 TableRow(children: [
        //                   Row(
        //                     children: [
        //                       Text(
        //                         "Teacher Name",
        //                         style: TextStyle(
        //                             fontSize: 11,
        //                             fontWeight:
        //                             FontWeight.bold,
        //                             color: HexColor(
        //                                 "#707782")),
        //                       ),
        //                       SizedBox(width: 35),
        //                       Text(
        //                         "Lisa",
        //                         style: TextStyle(
        //                             fontWeight:
        //                             FontWeight.bold,
        //                             fontSize: 11),
        //                       )
        //                     ],
        //                   ),
        //                 ]),
        //                 TableRow(children: [
        //                   Padding(
        //                     padding:
        //                     const EdgeInsets.only(
        //                         top: 4),
        //                     child: Row(
        //                       children: [
        //                         Text(
        //                           "Room Number",
        //                           style: TextStyle(
        //                               fontSize: 11,
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               color: HexColor(
        //                                   "#707782")),
        //                         ),
        //                         SizedBox(width: 35),
        //                         Text(
        //                           "33",
        //                           style: TextStyle(
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               fontSize: 11),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ]),
        //                 TableRow(children: [
        //                   Padding(
        //                     padding:
        //                     const EdgeInsets.only(
        //                         top: 4),
        //                     child: Row(
        //                       children: [
        //                         Text(
        //                           "Schedule Meeting",
        //                           style: TextStyle(
        //                               fontSize: 11,
        //                               fontWeight:
        //                               FontWeight
        //                                   .bold,
        //                               color: HexColor(
        //                                   "#707782")),
        //                         ),
        //                         SizedBox(width: 17),
        //                         Padding(
        //                           padding:
        //                           const EdgeInsets
        //                               .only(
        //                               right: 30),
        //                           child: Container(
        //                               width: 20,
        //                               height: 20,
        //                               decoration: BoxDecoration(
        //                                   shape: BoxShape
        //                                       .circle,
        //                                   color: Colors
        //                                       .grey),
        //                               child: Icon(
        //                                 Icons.videocam,
        //                                 color: Colors
        //                                     .white,
        //                                 size: 11,
        //                               )),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ]),
        //               ],
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(
        //                 top: 8, right: 23),
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "Students to bring their blue ink bottle & few",
        //                   style: TextStyle(
        //                       fontSize: 7.5,
        //                       fontWeight:
        //                       FontWeight.bold,
        //                       color:
        //                       HexColor("#b0adac")),
        //                 ),
        //                 Padding(
        //                   padding:
        //                   const EdgeInsets.only(
        //                       right: 117),
        //                   child: Text(
        //                     "white papers",
        //                     style: TextStyle(
        //                         fontSize: 7.5,
        //                         fontWeight:
        //                         FontWeight.bold,
        //                         color: HexColor(
        //                             "#b0adac")),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
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
