import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/models/timetable.dart';
import 'package:phygitalz_project_1/Timetable/Student_Timetable/models/timetable_provider.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';

class myDrawer extends StatelessWidget {
  AppConfig _appConfig;
  myDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TimetableProvider timetableProvider = Provider.of<TimetableProvider>(context);
    _appConfig = AppConfig(context);
    List<ListTile> _listdata = <ListTile>[
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/HssScreen');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.access_time,
          color: Colors.pinkAccent,
        ),
        title: Text('TimeTable_student'),
        onTap: () async {
           List timetable = await timetableProvider.T_table(14, 24,DateTime.parse("2021-07-12"));

          Provider.of<TimeTable>(context,listen: false).setTable(timetable);
          Navigator.pop(context);
          Navigator.pushNamed(context, '/timetable_student');
          //Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.access_time,
          color: Colors.pinkAccent,
        ),
        title: Text('TimeTable_Teacher'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/timetable_teacher');

        },
      ),
      ListTile(
        leading: Icon(
          Icons.access_time,
          color: Colors.pinkAccent,
        ),
        title: Text('TimeTable_viewpopup'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/teacherpop');

        },
      ),
      ListTile(
        leading: Icon(
          Icons.blur_circular,
          color: Colors.pinkAccent,
        ),
        title: Text('Circular'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/circular');
        },
      ),


      ListTile(
        leading: Icon(
          Icons.account_box_outlined,
          color: Colors.pinkAccent,
        ),
        title: Text('coordinator'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/HssCoord');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
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
              height: 100,
              width: double.infinity,
              //color: Colors.pinkAccent,
              child: Padding(
                padding:  EdgeInsets.only(left: _appConfig.rWP(5)),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.pinkAccent,radius: _appConfig.rW(10),),
                    Padding(
                      padding:  EdgeInsets.only(left: _appConfig.rWP(4)),
                      child: Text("Vishal"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 650,
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
