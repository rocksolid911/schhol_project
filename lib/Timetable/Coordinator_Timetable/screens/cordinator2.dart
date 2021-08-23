import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'package:table_calendar/table_calendar.dart';

class Coordinator2 extends StatefulWidget {
  @override
  _Coordinator2State createState() => _Coordinator2State();
}

class _Coordinator2State extends State<Coordinator2> {
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  CalendarFormat format = CalendarFormat.week;

  static final List<String> _items = <String>[
    "Lily",
    "Name2",
    "Name 3",
    "Name 4"
  ];

  String _value = _items.first;

  @override
  Widget build(BuildContext context) {
    YYDialog.init(context);
    _appConfig = AppConfig(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                height: _appConfig.rH(30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/3.jpg"), fit: BoxFit.fill),
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
                          width: _appConfig.rW(25.5),
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
                        todayDecoration: BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        weekendTextStyle: TextStyle(color: Colors.white),
                        disabledTextStyle: TextStyle(color: Colors.white),
                        defaultTextStyle: TextStyle(color: Colors.white),
                        holidayTextStyle: TextStyle(color: Colors.white),
                        outsideTextStyle: TextStyle(color: Colors.white),
                        //rangeHighlightColor : const Color(4290502143),
                        //outsideTextStyle : const TextStyle(color: const Color(4289638062)),
                      ),
                      headerStyle: HeaderStyle(
                        titleCentered: true,
                        formatButtonVisible: false,
                        titleTextStyle:
                            TextStyle(color: Colors.white, fontSize: 14),
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
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
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: _appConfig.rH(4),
              ),
              Container(
                  height: _appConfig.rH(11.3),
                  decoration: BoxDecoration(
                      color: HexColor("#e3e6e5"),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26))),
                  //HexColor("#d64575"),HexColor("#8522a3")

                  child: Stack(
                    children: [
                      Positioned(
                        left: _appConfig.rHP(8),
                        bottom: _appConfig.rHP(10.2),
                        child: Text(
                          "Category",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 10,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Positioned(
                          left: _appConfig.rHP(20),
                          bottom: _appConfig.rHP(10.2),
                          child: Text(
                            "Teacher Name",
                            style: TextStyle(
                                color: Colors.black26,
                                fontSize: 10,
                                fontWeight: FontWeight.w900),
                          )),
                      Positioned(
                          left: _appConfig.rHP(8),
                          bottom: _appConfig.rHP(6),
                          child: Text(
                            "Teacher",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w900),
                          )),
                      Positioned(
                          left: _appConfig.rHP(20.3),
                          bottom: _appConfig.rHP(6),
                          child: Text(
                            "Lily Ganeshan",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w900),
                          )),
                      Positioned(
                        left: _appConfig.rHP(40),
                        bottom: _appConfig.rHP(7),
                        child: GestureDetector(
                          child: IconButton(
                            icon: Icon(Icons.account_box_outlined),
                            onPressed: (){
                              YYAlertDialogPopMenu();
                            },
                          )
                        ),
                        
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(
                    left: _appConfig.rHP(4), top: _appConfig.rHP(4)),
                child: Container(
                  height: _appConfig.rH(37.25),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (builder, context) {
                        return Container(
                            child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: _appConfig.rHP(0),
                                bottom: _appConfig.rHP(0),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: _appConfig.rHP(2.2),
                                    ),
                                    child: Container(
                                        width: _appConfig.rW(14),
                                        height: _appConfig.rH(14),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: HexColor("#f55f5f")),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(6),
                                              left: _appConfig.rWP(2.5)),
                                          child: Text(
                                            "10A",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(16),
                                        left: _appConfig.rWP(4.5)),
                                    child: Container(
                                        height: _appConfig.rH(15.7),
                                        child: VerticalDivider(
                                          thickness: 1,
                                          indent: 6,
                                          endIndent: 6,
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(28)),
                                    child: Container(
                                        width: _appConfig.rW(14),
                                        height: _appConfig.rH(15),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: HexColor("#188c60")),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(6.5),
                                              left: _appConfig.rWP(2.5)),
                                          child: Text(
                                            "10B",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(43),
                                        left: _appConfig.rWP(4.5)),
                                    child: Container(
                                        height: _appConfig.rH(16),
                                        child: VerticalDivider(
                                          thickness: 1,
                                          indent: 6,
                                          endIndent: 6,
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: _appConfig.rHP(56),
                                    ),
                                    child: Container(
                                        width: _appConfig.rW(14),
                                        height: _appConfig.rH(14),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: HexColor("#188c60")),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(6),
                                              left: _appConfig.rWP(2.5)),
                                          child: Text(
                                            "10C",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(43),
                                        left: _appConfig.rWP(4.5)),
                                    child: Container(
                                        height: _appConfig.rH(16),
                                        child: VerticalDivider(
                                          thickness: 1,
                                          indent: 6,
                                          endIndent: 6,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: _appConfig.rW(5),
                            ),
                            Column(
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
                                      height: _appConfig.rH(24),
                                      width: _appConfig.rW(60),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: _appConfig.rWP(3),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.all_inbox_outlined,
                                                  size: 45,
                                                  color: HexColor("#f55f5f"),
                                                ),
                                                Text(
                                                  "Maths",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: _appConfig.rWP(4.2),
                                              left: _appConfig.rWP(3.8),
                                              top: _appConfig.rHP(5),
                                            ),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(8),
                                                left: _appConfig.rWP(4.5)),
                                            child: Table(
                                              children: [
                                                TableRow(children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Time",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(
                                                          width: _appConfig
                                                              .rWP(4.5)),
                                                      Text(
                                                        "10:30 AM - 11:15 AM",
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
                                                      top: _appConfig.rHP(1.5),
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
                                                          width:
                                                              _appConfig.rW(1),
                                                        ),
                                                        Text(
                                                          "45",
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
                                                            _appConfig.rHP(1.5),
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
                                                          SizedBox(
                                                            width: _appConfig
                                                                .rW(1),
                                                          ),
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .indigoAccent),
                                                            child: Icon(
                                                              Icons.videocam,
                                                              color:
                                                                  Colors.white,
                                                              size: 11,
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
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(20),
                                                right: _appConfig.rWP(1.8)),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Lesson Plan : Show how students cane utilize",
                                                  style: TextStyle(
                                                      fontSize: 7.5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          HexColor("#b0adac")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          _appConfig.rWP(4.5)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "the ink bottle and pen",
                                                        style: TextStyle(
                                                            fontSize: 7.5,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#b0adac")),
                                                      ),
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
                                      height: _appConfig.rH(24),
                                      width: _appConfig.rW(60),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: _appConfig.rWP(3),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.all_inbox_outlined,
                                                  size: 45,
                                                  color: HexColor("#188c60"),
                                                ),
                                                Text(
                                                  "Physics",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: _appConfig.rWP(4.2),
                                              left: _appConfig.rWP(3.8),
                                              top: _appConfig.rHP(5),
                                            ),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(8),
                                                left: _appConfig.rWP(4.5)),
                                            child: Table(
                                              children: [
                                                TableRow(children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Time",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(
                                                          width: _appConfig
                                                              .rWP(4.5)),
                                                      Text(
                                                        "10:30 AM - 11:15 AM",
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
                                                      top: _appConfig.rHP(1.5),
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
                                                          width:
                                                              _appConfig.rW(1),
                                                        ),
                                                        Text(
                                                          "45",
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
                                                            _appConfig.rHP(1.5),
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
                                                          SizedBox(
                                                            width: _appConfig
                                                                .rW(1),
                                                          ),
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .indigoAccent),
                                                            child: Icon(
                                                              Icons.videocam,
                                                              color:
                                                                  Colors.white,
                                                              size: 11,
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
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(20),
                                                right: _appConfig.rWP(1.8)),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Lesson Plan : Show how students cane utilize",
                                                  style: TextStyle(
                                                      fontSize: 7.5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          HexColor("#b0adac")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          _appConfig.rWP(4.5)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "the ink bottle and pen",
                                                        style: TextStyle(
                                                            fontSize: 7.5,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#b0adac")),
                                                      ),
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
                                      height: _appConfig.rH(24),
                                      width: _appConfig.rW(60),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: _appConfig.rWP(3),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.all_inbox_outlined,
                                                  size: 45,
                                                  color: HexColor("#188c60"),
                                                ),
                                                Text(
                                                  "Physics",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: _appConfig.rWP(4.2),
                                              left: _appConfig.rWP(3.8),
                                              top: _appConfig.rHP(5),
                                            ),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(8),
                                                left: _appConfig.rWP(4.5)),
                                            child: Table(
                                              children: [
                                                TableRow(children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Time",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#707782")),
                                                      ),
                                                      SizedBox(
                                                          width: _appConfig
                                                              .rWP(4.5)),
                                                      Text(
                                                        "10:30 AM - 11:15 AM",
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
                                                      top: _appConfig.rHP(1.5),
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
                                                          width:
                                                              _appConfig.rW(1),
                                                        ),
                                                        Text(
                                                          "45",
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
                                                            _appConfig.rHP(1.5),
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
                                                          SizedBox(
                                                            width: _appConfig
                                                                .rW(1),
                                                          ),
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .indigoAccent),
                                                            child: Icon(
                                                              Icons.videocam,
                                                              color:
                                                                  Colors.white,
                                                              size: 11,
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
                                            padding: EdgeInsets.only(
                                                top: _appConfig.rHP(20),
                                                right: _appConfig.rWP(1.8)),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Lesson Plan : Show how students cane utilize",
                                                  style: TextStyle(
                                                      fontSize: 7.5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          HexColor("#b0adac")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          _appConfig.rWP(4.5)),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "the ink bottle and pen",
                                                        style: TextStyle(
                                                            fontSize: 7.5,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: HexColor(
                                                                "#b0adac")),
                                                      ),
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
                                ),
                              ],
                            ),
                          ],
                        ));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 YYDialog YYAlertDialogPopMenu() {
   return YYDialog().build()
     ..width = 200
     ..height=400
     ..borderRadius = 8.0
     //..gravity = Gravity.right
     ..barrierColor = Colors.transparent
     ..margin = EdgeInsets.only(top: 80, right: 20)
     ..barrierColor=Colors.black12

     ..text(
       padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
       text: "Edit Libary",
       fontSize: 16.0,
       color: Colors.grey[700],
     )
     ..text(
       padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
       text: "Read History",
       fontSize: 16.0,
       color: Color(0xFFFF6B2D),
     )
     ..show();
}

class one extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = HexColor("#f55f5f")
      ..strokeCap = StrokeCap.butt;
    canvas.drawLine(
        Offset(4, size.height - 155), Offset(4, size.height - 22), paint);
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
        Offset(4, size.height - 155), Offset(4, size.height - 22), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class three extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = HexColor("#188c60")
      ..strokeCap = StrokeCap.butt;
    canvas.drawLine(
        Offset(4, size.height - 155), Offset(4, size.height - 22), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}