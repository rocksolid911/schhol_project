import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:table_calendar/table_calendar.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({Key key}) : super(key: key);

  @override
  _TimeTableScreenState createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  CalendarFormat format = CalendarFormat.week;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      bottomNavigationBar: mYBottomNav(),
      drawer: myDrawer(),
      key: _drawerkey,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/3.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                            ),
                            onTap: () {
                              _drawerkey.currentState.openDrawer();
                            },
                          ),
                        ),
                        SizedBox(
                          width: _appConfig.rW(25),
                        ),
                        Text(
                          "Time Table",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime(2010),
                      lastDay: DateTime(2030),
                      calendarFormat: format,
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(color: Colors.orange,shape: BoxShape.circle),
                       outsideTextStyle: TextStyle(color: Colors.white),
                        //rangeHighlightColor : const Color(4290502143),
                        //outsideTextStyle : const TextStyle(color: const Color(4289638062)),
                      ),
                      headerStyle: HeaderStyle(
                        titleCentered: true,
                        formatButtonVisible: false,
                        titleTextStyle: TextStyle(color: Colors.white,fontSize: 18),
                        leftChevronIcon: Icon(Icons.chevron_left,color: Colors.white,),
                        rightChevronIcon: Icon(Icons.chevron_right,color: Colors.white,),
                      ),
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(color: Colors.white),
                        weekendStyle: TextStyle(color: Colors.white),
                        //decoration: BoxDecoration(color: Colors.white),
                      ),
                      // rowHeight: 56,
                      onFormatChanged: (CalendarFormat _format) {
                        format = _format;
                      },
                    ),
                    GestureDetector(
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 35),
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#f55f5f")),
                          child: Icon(
                            Icons.format_list_bulleted_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Text("Maths",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Container(
                            height: 80,
                            child: VerticalDivider(
                                thickness: 1,
                                indent: 6,
                                endIndent: 6,
                                color: Colors.black26)),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#188c60")),
                          child: Icon(
                            Icons.panorama_horizontal_select,
                            color: Colors.white,
                          ),
                        ),
                        Text("Physics",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Container(
                            height: 80,
                            child: VerticalDivider(
                                thickness: 1,
                                indent: 6,
                                endIndent: 6,
                                color: Colors.black26)),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#faa107")),
                          child: Icon(
                            Icons.checkroom_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Text("Chemistry",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 450,
                      width: 220,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (builder, context) {
                            return Container(
                                child: Column(
                              children: [
                                CustomPaint(
                                  foregroundPainter: one(),
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Container(
                                      height: 140,
                                      width: 220,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              right: 82,
                                            ),
                                            child: Text(
                                              "10.30AM-11.15AM",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12, right: 12, top: 3),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(width: 35),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
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
                                                        SizedBox(width: 35),
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
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 4),
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
                                CustomPaint(
                                  foregroundPainter: two(),
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Container(
                                      height: 139,
                                      width: 220,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, right: 82),
                                            child: Text(
                                              "10.30AM-11.15AM",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12, right: 12, top: 3),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(width: 35),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
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
                                                        SizedBox(width: 35),
                                                        Text(
                                                          "23",
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
                                                TableRow(children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Schedule Meeting",
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: HexColor(
                                                                  "#707782")),
                                                        ),
                                                        SizedBox(width: 17),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 30),
                                                          child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .grey),
                                                              child: Icon(
                                                                Icons.videocam,
                                                                color: Colors
                                                                    .white,
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
                                            padding: const EdgeInsets.only(
                                                top: 8, right: 23),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Students to bring their blue ink bottle & few",
                                                  style: TextStyle(
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
                                CustomPaint(
                                  foregroundPainter: three(),
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Container(
                                      height: 139,
                                      width: 220,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, right: 82),
                                            child: Text(
                                              "10.30AM-11.15AM",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12, right: 13, top: 3),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(width: 35),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
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
                                                        SizedBox(width: 35),
                                                        Text(
                                                          "33",
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
                                                TableRow(children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Schedule Meeting",
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: HexColor(
                                                                  "#707782")),
                                                        ),
                                                        SizedBox(width: 17),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 30),
                                                          child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .grey),
                                                              child: Icon(
                                                                Icons.videocam,
                                                                color: Colors
                                                                    .white,
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
                                            padding: const EdgeInsets.only(
                                                top: 8, right: 23),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Students to bring their blue ink bottle & few",
                                                  style: TextStyle(
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
                              ],
                            ));
                          }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class one extends CustomPainter {
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

class two extends CustomPainter {
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

class three extends CustomPainter {
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
