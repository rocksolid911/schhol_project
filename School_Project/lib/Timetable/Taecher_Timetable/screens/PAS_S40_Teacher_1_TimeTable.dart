import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/widgets/timetable_card_T.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/widgets/timetable_subject_icon_coloumn_T.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'package:table_calendar/table_calendar.dart';

class TimetableTeacherScreen extends StatefulWidget {
  @override
  _TimetableTeacherScreenState createState() => _TimetableTeacherScreenState();
}

class _TimetableTeacherScreenState extends State<TimetableTeacherScreen> {
  DateTime _selectedDay;
  DateTime _focusedDay = DateTime.now();
  AppConfig _appConfig;
  bool select;
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
              calendarView(context),
              Padding(
                padding: const EdgeInsets.only(left: 25,bottom: 0),
                child: Container(
                  height: _appConfig.rH(56.3),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (builder, context) {
                      return Row(
                        children: [
                          TeacherTimeIcon(),
                          SizedBox(
                            width: _appConfig.rW(5),
                          ),
                          TeacherTimeCard(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container calendarView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //TODO make it responsive
      height: _appConfig.rH(29),
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
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                // Call `setState()` when updating the selected day
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            focusedDay: _focusedDay,
            firstDay: DateTime(2010),
            lastDay: DateTime(2030),
            calendarFormat: format,
            calendarStyle: CalendarStyle(
              selectedDecoration:
              BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              todayDecoration:
              BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              outsideTextStyle: TextStyle(color: Colors.white),
              defaultTextStyle: TextStyle(color: Colors.white),
              // defaultDecoration: BoxDecoration(
              //   color: _selectedDay==_focusedDay?Colors.orange:Colors.white,
              // ),
              //rangeHighlightColor : const Color(4290502143),
              //outsideTextStyle : const TextStyle(color: const Color(4289638062)),
            ),
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
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
          // GestureDetector(
          //   child: Icon(Icons.keyboard_arrow_down_rounded),
          //   onTap: () {},
          // )
        ],
      ),
    );
  }
}

