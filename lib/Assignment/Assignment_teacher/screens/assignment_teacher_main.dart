import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/recordprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/assignment_type_select.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';

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
    // DataProvider dataProvider = Provider.of<DataProvider>(context);
    // FilterProvider filterProvider = Provider.of<FilterProvider>(context);
    // //List<Assignment> draft = dataProvider.assignmentType("Draft");
    // List <Assignment> draft = filterProvider.filterassigntype("Draft");
    List <Assignment> draft = Recordprovider().assignment;
    return Scaffold(
      drawer: myDrawer(),
      bottomNavigationBar: mYBottomNav(),
      key: _drawerkey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.pushNamed(context, "/create_assignment");
        },
        child: Container(
          // height: 60,
          // width: 60,
          height: _appConfig.rH(18), width: _appConfig.rW(18),
          decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage(
            //         "assets/images/Create Icon.png"),
            //     fit: BoxFit.fill),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFD73865),
                Color(0xFFA40DAB),
                //8A09B1
                Color(0xFF8A09B1),
               // Colors.teal,
                //A40DAB

                //Colors.tealAccent,
                //D73865

              ],
            ),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
          // child: SvgPicture.asset(
          //  "assets/images/Create_Icon_Assignment.svg",
          //   fit: BoxFit.cover,
          // )
        ),
      ),
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
                            "${draft.length}",
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
                            "Published",
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
          body:  TabBarView(
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
                  // Positioned(
                  //   child: GestureDetector(
                  //     child: SvgPicture.asset(
                  //       "assets/images/Create_Icon_Assignment.svg",
                  //       height: _appConfig.rH(13),
                  //       width: _appConfig.rW(13),
                  //     ),
                  //     onTap: (){
                  //       Navigator.pushNamed(context, "/create_assignment");
                  //     },
                  //   ),
                  //   top: _appConfig.rH(60),
                  //   right: _appConfig.rW(10),
                  // ),
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
                      onTap: () {
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
