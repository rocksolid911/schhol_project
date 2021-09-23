import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/providers/timetable_set_provider.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/providers/timetable_provider.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';

class myDrawer extends StatelessWidget {
  AppConfig _appConfig;
  myDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TimetableProvider timetableProvider =
        Provider.of<TimetableProvider>(context);
    _appConfig = AppConfig(context);
    List<ListTile> _listdata = <ListTile>[
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Home.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/HssScreen');
        },
      ),
      // ListTile(
      //   leading: Icon(
      //     Icons.access_time,
      //     color: Colors.pinkAccent,
      //   ),
      //   title: Text('TimeTable_student'),
      //   //with out async got the error future<dynamic> is not a subtype of list<dynamic>
      //   //bcoz it need to be async in order to complete request
      //   onTap: () async {
      //     List timetable = await timetableProvider.T_table(
      //         14, 24, DateTime.parse("2021-07-12"));
      //
      //     Provider.of<TimeTable>(context, listen: false).setTable(timetable);
      //     Navigator.pop(context);
      //     Navigator.pushNamed(context, '/timetable_student');
      //     //Navigator.pop(context);
      //   },
      // ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Timetable.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        //title: Text('TimeTable_Teacher'),
        title: Text("Timetable"),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/timetable_teacher');
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Attendance.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        //title: Text('TimeTable_Teacher'),
        title: Text("Attendance"),
        onTap: () {
          Navigator.pop(context);
         // Navigator.pushNamed(context, '/timetable_teacher');
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Assignments.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Assignment'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/assignment_teacher_main');
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Leave.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Leaves'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/try');
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Circular.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Circular'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/circular');
        },
      ),

      // ListTile(
      //   leading: Icon(
      //     Icons.account_box_outlined,
      //     color: Colors.pinkAccent,
      //   ),
      //   title: Text('coordinator'),
      //   onTap: () {
      //     Navigator.pop(context);
      //     Navigator.pushNamed(context, '/HssCoord');
      //   },
      // ),

      // ListTile(
      //   leading: Icon(
      //     Icons.more,
      //     color: Colors.pinkAccent,
      //   ),
      //   title: Text('Assignment_Student'),
      //   onTap: () {
      //     Navigator.pop(context);
      //     Navigator.pushNamed(context, "/assignment_teacher");
      //   },
      // ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Assessment.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Assessment'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/assmain");
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Issues.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Issue & Suggestion'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Calendar.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Calender'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Calendar21.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Quiz'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Calendar21.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Help Desk'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Settings.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Settings'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: SvgPicture.asset(
          "assets/images/Logout.svg",
          height: _appConfig.rH(3),
          width: _appConfig.rW(3),
        ),
        title: Text('Logout'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ];
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: _appConfig.rH(16),
              width: double.infinity,
              //color: Colors.pinkAccent,
              child: Padding(
                padding: EdgeInsets.only(left: _appConfig.rWP(5)),
                child: Row(
                  children: [
                    CircleAvatar(
                      //backgroundColor: Colors.pinkAccent,
                      radius: _appConfig.rW(10),
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                        // height: _appConfig.rH(13),
                        // width: _appConfig.rW(13),
                        //fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _appConfig.rWP(4)),
                      child: Text("Naina Saini"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: _appConfig.rH(79),
              width: double.infinity,
              //color: Colors.green,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: _listdata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rWP(5),
                        ),
                        child: _listdata[index].leading,
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(right: _appConfig.rWP(10)),
                        child: _listdata[index].title,
                      ),
                      onTap: _listdata[index].onTap,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
