import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/approved_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/buttonsterm.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/conducted.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/draft_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/evaluated_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/rejected_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/submitted_cards.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/student_submitted_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';

class AssTeacher extends StatefulWidget {
  const AssTeacher({Key key}) : super(key: key);

  @override
  _AssTeacherState createState() => _AssTeacherState();
}

class _AssTeacherState extends State<AssTeacher>
    with SingleTickerProviderStateMixin {
  TabController controller;
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 7,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
        drawer: myDrawer(),
        bottomNavigationBar: mYBottomNav(),
        key: _drawerkey,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
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

                    background: SvgPicture.asset(
                      "assets/images/Timetable_Calendar_Card.svg",
                      fit: BoxFit.none,
                    ),
                  ),
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
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 4,
                    labelPadding: EdgeInsets.only(bottom: 8,left: 25,right: 10),
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.white),
                        insets: EdgeInsets.only(bottom: 8,left: 4)),
                    tabs: [
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "03",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Draft",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        // text: "3",
                        // child: Text("Draft"),
                      ),

                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Submitted",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "08",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Approved",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "07",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Rejected",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "11",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Scheduled",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "05",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Conducted",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              "07",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Evaluated",
                              style: TextStyle(color: Colors.white, fontSize: 14),
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
                //Center(child: Text("Tab one")),
               Draftcard(),
                //Center(child: Text("Tab two")),
                SubmittedCard(),
                //Center(child: Text("Tab three")),
                Approvedcard(),
                //Center(child: Text("Tab four")),
                RejectedCard(),
                // Center(child: Text("Tab five")),
                //TODO need to be modified
                Approvedcard(),
              ConductedView(),
                //Center(child: Text("Tab six")),
                //Center(child: Text("Tab seven")),
                EvalutaedCard(),
              ],
            ),
          ),
        ));
  }
}
