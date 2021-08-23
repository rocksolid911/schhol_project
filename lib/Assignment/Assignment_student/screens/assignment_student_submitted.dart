import 'package:phygitalz_project_1/Assignment/Assignment_student/screens/tabbar.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'student_submitted_card.dart';

import 'package:flutter/material.dart';

class StudentAssignment extends StatefulWidget {
  @override
  _StudentAssignmentState createState() => _StudentAssignmentState();
}

class _StudentAssignmentState extends State<StudentAssignment>
    with SingleTickerProviderStateMixin {
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
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            slivers:
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 50,
                title: Text("SilverAppBar title"),
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
                    background: Image.asset(
                      "assets/images/3.jpg",
                      fit: BoxFit.none,
                    )),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
                collapsedHeight: 50,
                expandedHeight: 200.0,
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
                  indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.white),insets: EdgeInsets.only(bottom: 8)),
                  tabs: [
                   // Tab(text: 'Tab 1'),
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
                            "Pending",
                            style: TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    // Tab(text: 'Tab 2'),
                    // Tab(text: 'Tab 3'),
                    // Tab(text: 'Tab 4'),
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
                            "Submitted",
                            style: TextStyle(
                                fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Tab(
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
                            "Accepted",
                            style: TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
                            "Rejected",
                            style: TextStyle(
                                color: Colors.white, fontSize: 10),
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
              //Center(child: Text("Tab two")),
              Center(child: submtted_card()),
              submtted_card(),
              Center(child: Text("Tab three")),
              Center(child: Text("Tab four")),
            ],
          ),
        ),
      ),
    );
  }
}
