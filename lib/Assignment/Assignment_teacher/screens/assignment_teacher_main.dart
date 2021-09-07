import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/assignment_type_select.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import '../widgets/student_submitted_card.dart';

import 'package:flutter/material.dart';

class AssignmentTeacherMain extends StatefulWidget {
  @override
  _AssignmentTeacherMainState createState() => _AssignmentTeacherMainState();
}

class _AssignmentTeacherMainState extends State<AssignmentTeacherMain>
    with SingleTickerProviderStateMixin {
  TabController controller;
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    // return Scaffold(
    //   appBar: AppBar(title: Text("Assignment"),flexibleSpace: TabBarr(),),
    //   body: SafeArea(
    //     child: Container(
    //       width: MediaQuery.of(context).size.width,
    //       child:submtted_card()
    //     ),
    //   ),
    // );

    return Scaffold(
      drawer: myDrawer(),
      key: _drawerkey,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: GestureDetector(
                  child: Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _drawerkey.currentState.openDrawer();
                  },
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: _appConfig.rWP(4)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
                toolbarHeight: 50,
                title: Text("Assignment"),
                pinned: true,
                snap: true,
                floating: true,
                //elevation: 15,
                backgroundColor: Colors.pinkAccent,
                flexibleSpace: FlexibleSpaceBar(
                    //centerTitle: true,
                    // title: Text("Collapsing Toolbar",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 16.0,
                    //     )),
                    background: SvgPicture.asset(
                  "assets/images/Timetable_Calendar_Card.svg",
                  fit: BoxFit.none,
                )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                collapsedHeight: 50,
                expandedHeight: 160.0,
                // expandedHeight: 220.0,
                // **Is it intended ?** flexibleSpace.title overlaps with tabs title.
                // flexibleSpace: FlexibleSpaceBar(
                //   title: Text("FlexibleSpace title"),
                // ),
                bottom: TabBar(
                  //isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4,
                  labelPadding: EdgeInsets.only(bottom: 8),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.white),
                      insets: EdgeInsets.only(bottom: 8)),
                  tabs: [
                    Tab(
                      child: Column(
                        children: [
                          Text(
                            "03",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: _appConfig.rH(1),
                          ),
                          Text(
                            "Draft",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Text(
                            "05",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: _appConfig.rH(1),
                          ),
                          Text(
                            "Pending",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      //TODO run time error is coming for this coloumn try adding container
                      //instead of coloumn
                      child: Column(
                        children: [
                          Text(
                            "06",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: _appConfig.rH(1),
                          ),
                          Text(
                            "Closed",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                  controller: controller,
                ),
              ),
              // SliverList(
            ];
          },
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              Stack(
                children: [
                  Column(
                    children: [
                      SelectTypeAssignment(),
                      SizedBox(
                        height: _appConfig.rH(2.5),
                      ),
                      submtted_card(),
                    ],
                  ),
                  Positioned(
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        "assets/images/Create_Icon_Assignment.svg",
                        height: _appConfig.rH(13),
                        width: _appConfig.rW(13),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, "/create_assignment");
                      },
                    ),
                    top: _appConfig.rH(60),
                    right: _appConfig.rW(10),
                  ),
                ],
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SelectTypeAssignment(),
                      SizedBox(
                        height: _appConfig.rH(2.5),
                      ),
                      PendingCard(),
                    ],
                  ),
                  Positioned(
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        "assets/images/Create_Icon_Assignment.svg",
                        height: _appConfig.rH(13),
                        width: _appConfig.rW(13),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, "/create_assignment");
                      },
                    ),
                    top: _appConfig.rH(60),
                    right: _appConfig.rW(10),
                  ),
                ],
              ),
              Center(child: Text("Tab three")),
            ],
          ),
        ),
      ),
    );
  }
}
