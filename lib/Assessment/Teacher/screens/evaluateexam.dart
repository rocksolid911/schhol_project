import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/corrected_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/notcorrected_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';

class EvExam extends StatefulWidget {
  const EvExam({Key key}) : super(key: key);

  @override
  _EvExamState createState() => _EvExamState();
}

class _EvExamState extends State<EvExam> with SingleTickerProviderStateMixin{
  TabController controller;
  AppConfig _appConfig;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(

        bottomNavigationBar: mYBottomNav(),

        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: true,
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
                  title: Text("Evaluate Exam "),
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
                              "Not Corrected",
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
                              "04",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                            Text(
                              "Corrected",
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
                              "Not Turnedin",
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
                NotCorrected(),
                //Center(child: Text("Tab one")),

                //Center(child: Text("Tab two")),
                Corrected(),

                //Center(child: Text("Tab three")),
                //TODO values should change show create new card after json integration
                NotCorrected(),

                //Center(child: Text("Tab four")),
                //TODO values should change show create new card after json integration
                NotCorrected(),

              ],
            ),
          ),
        ));
  }
}
