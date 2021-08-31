import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class AssignmentTeacher extends StatefulWidget {
  @override
  _AssignmentTeacherState createState() => _AssignmentTeacherState();
}

class _AssignmentTeacherState extends State<AssignmentTeacher>
    with TickerProviderStateMixin {
  AppConfig _appConfig;
  TabController controller;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
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
                            "Pending",
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
                            "Submitted",
                            style: TextStyle(fontSize: 10, color: Colors.white),
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
                            style: TextStyle(color: Colors.white, fontSize: 10),
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
              //Center(child: Text("Tab one")),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: _appConfig.rH(10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "TITLE:complete the assignment on algebra topic"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child:
                                Text("class:10  subject:math  Duedate:21oct"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (builder, context) {
                        return Padding(
                          padding: EdgeInsets.all(_appConfig.rWP(2)),
                          child: Card(
                            child: Container(
                              height: _appConfig.rH(15),
                              width: _appConfig.rW(30),
                              //color: Colors.yellow,
                              child: Padding(
                                padding: EdgeInsets.all(_appConfig.rWP(1)),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      // backgroundColor: Colors.green,
                                      backgroundImage: AssetImage(
                                          "assets/images/profile_img.jpeg"),
                                      radius: _appConfig.rH(5),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: _appConfig.rHP(4),
                                        left: _appConfig.rWP(2.5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Lisa Barnet",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "Roll no : 101",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              // Center(child: Text("Tab two")),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: _appConfig.rH(10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "TITLE:complete the assignment on algebra topic"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child:
                                Text("class:10  subject:math  Duedate:21oct"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (builder, context) {
                        return Padding(
                          padding: EdgeInsets.all(_appConfig.rWP(2)),
                          child: Card(
                            child: Container(
                              height: _appConfig.rH(15),
                              width: _appConfig.rW(30),
                              //color: Colors.yellow,
                              child: Padding(
                                padding: EdgeInsets.all(_appConfig.rWP(1)),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      // backgroundColor: Colors.green,
                                      backgroundImage: AssetImage(
                                          "assets/images/profile_img.jpeg"),
                                      radius: _appConfig.rH(5),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: _appConfig.rHP(4),
                                        left: _appConfig.rWP(2.5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Lisa Barnet",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "Roll no : 101",
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(25)),
                                      child: IconButton(
                                        splashColor: Colors.pinkAccent,
                                        icon: Icon(
                                          Icons.edit,
                                          color: Colors.pinkAccent,
                                          size: _appConfig.rH(4),
                                        ),
                                        tooltip: 'review Assignment',
                                        onPressed: () {
                                          //remember to put this
                                          //follow this link <https://stackoverflow.com/questions/56927095/flutter-navigator-argument-type-context-cant-be-assigned-to-the-parameter-ty>
                                          Review(this.context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              //Center(child: Text("Tab three")),
              Column(
                children: [
                  Container(
                      height: _appConfig.rH(10.1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 6),
                              spreadRadius: 2,
                              blurRadius: 6)
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rHP(8.1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "Timetable",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    HexColor("#d64575"),
                                    HexColor("#8522a3")
                                  ]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                            SizedBox(width: _appConfig.rW(4)),
                            Container(
                              child: Center(
                                child: Text(
                                  "Lab record",
                                  style: TextStyle(
                                      color: HexColor("#d64575"),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor("#d64575"),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                            SizedBox(width: _appConfig.rW(4)),
                            Container(
                              child: Center(
                                child: Text(
                                  "Portfolio",
                                  style: TextStyle(
                                      color: HexColor("#d64575"),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor("#d64575"),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: _appConfig.rH(10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "TITLE:complete the assignment on algebra topic"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child:
                                Text("class:10  subject:math  Duedate:21oct"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (builder, context) {
                        return Padding(
                          padding: EdgeInsets.all(_appConfig.rWP(2)),
                          child: Card(
                            child: Container(
                              height: _appConfig.rH(18),
                              width: _appConfig.rW(30),
                              //color: Colors.yellow,
                              child: Padding(
                                padding: EdgeInsets.all(_appConfig.rWP(1)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(1.5)),
                                          child: CircleAvatar(
                                            // backgroundColor: Colors.green,
                                            backgroundImage: AssetImage(
                                                "assets/images/profile_img.jpeg"),
                                            radius: _appConfig.rH(3.5),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: _appConfig.rHP(0),
                                            left: _appConfig.rWP(2.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Lisa Barnet",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                "Roll no : 101",
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: _appConfig.rWP(32)),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Rating",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                              Text(
                                                "05",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(8)),
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(4)),
                                      child: Text(
                                          "need improvement in mensurtation area,second class mark"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              // Center(child: Text("Tab four")),
              Column(
                children: [
                  Container(
                      height: _appConfig.rH(10.1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 6),
                              spreadRadius: 2,
                              blurRadius: 6)
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rHP(8.1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "Timetable",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    HexColor("#d64575"),
                                    HexColor("#8522a3")
                                  ]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                            SizedBox(width: _appConfig.rW(4)),
                            Container(
                              child: Center(
                                child: Text(
                                  "Lab record",
                                  style: TextStyle(
                                      color: HexColor("#d64575"),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor("#d64575"),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                            SizedBox(width: _appConfig.rW(4)),
                            Container(
                              child: Center(
                                child: Text(
                                  "Portfolio",
                                  style: TextStyle(
                                      color: HexColor("#d64575"),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor("#d64575"),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(19.5),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: _appConfig.rH(10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "TITLE:complete the assignment on algebra topic"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child:
                                Text("class:10  subject:math  Duedate:21oct"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (builder, context) {
                        return Padding(
                          padding: EdgeInsets.all(_appConfig.rWP(2)),
                          child: Card(
                            child: Container(
                              height: _appConfig.rH(18),
                              width: _appConfig.rW(30),
                              //color: Colors.yellow,
                              child: Padding(
                                padding: EdgeInsets.all(_appConfig.rWP(1)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(1.5)),
                                          child: CircleAvatar(
                                            // backgroundColor: Colors.green,
                                            backgroundImage: AssetImage(
                                                "assets/images/profile_img.jpeg"),
                                            radius: _appConfig.rH(3.5),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: _appConfig.rHP(0),
                                            left: _appConfig.rWP(2.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Lisa Barnet",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                "Roll no : 101",
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: _appConfig.rWP(32)),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Rating",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                              Text(
                                                "05",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(8)),
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(4)),
                                      child: Text(
                                          "need improvement in mensurtation area,second class mark"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void Review(BuildContext context) {
  Navigator.pushNamed(context, "/assignment_review_teacher");
}

/////////////////////////////////////////////////////////////
/*
*   child: Column(
          children: [
            Container(
                height: _appConfig.rH(10.1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 6),
                        spreadRadius: 2,
                        blurRadius: 6)
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: _appConfig.rHP(8.1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            "Timetable",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              HexColor("#d64575"),
                              HexColor("#8522a3")
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        height: _appConfig.rH(3),
                        width: _appConfig.rW(19.5),
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      Container(
                        child: Center(
                          child: Text(
                            "Lab record",
                            style: TextStyle(
                                color: HexColor("#d64575"),
                                fontSize: 9,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor("#d64575"),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        height: _appConfig.rH(3),
                        width: _appConfig.rW(19.5),
                      ),
                      SizedBox(width: _appConfig.rW(4)),
                      Container(
                        child: Center(
                          child: Text(
                            "Portfolio",
                            style: TextStyle(
                                color: HexColor("#d64575"),
                                fontSize: 9,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor("#d64575"),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        height: _appConfig.rH(3),
                        width: _appConfig.rW(19.5),
                      ),
                    ],
                  ),
                )),
            Stack(children: [
              Container(
                height: _appConfig.rH(61.1),

                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (builder, context) {
                      return Container(
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Container(
                                height: _appConfig.rH(19),
                                width: _appConfig.rW(85.5),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/images/Subject_Icon_Maths.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(3.2),
                                          left: _appConfig.rWP(15.5)),
                                      child: Text("Maths",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(55)),
                                        child: SvgPicture.asset(
                                          "assets/penn.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(64)),
                                        child: SvgPicture.asset(
                                          "assets/Previewicon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(75)),
                                        child: SvgPicture.asset(
                                          "assets/Delete Icon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(7),
                                          bottom: _appConfig.rWP(5)),
                                      child: Divider(
                                        thickness: 0.5,
                                        endIndent: 17,
                                        indent: 17,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(9),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(5)),
                                      child: Text(
                                          "Complete the assignment on Algebra Topic.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10.5)),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(16),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(2)),
                                      child: Row(
                                        children: [
                                          Text("Class",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("10",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Text("Section",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("A",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _appConfig.rWP(29)),
                                            child: Row(
                                              children: [
                                                Text("Due ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10,
                                                        color: Colors.grey)),
                                                Text("21 Oct 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10)),
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
                            SizedBox(
                              height: 6,
                            ),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Container(
                                height: _appConfig.rH(19),
                                width: _appConfig.rW(85.5),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/Computer.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(2.8),
                                          left: _appConfig.rWP(15.5)),
                                      child: Text("Computer Science",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(55)),
                                        child: SvgPicture.asset(
                                          "assets/penn.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(64)),
                                        child: SvgPicture.asset(
                                          "assets/Previewicon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(75)),
                                        child: SvgPicture.asset(
                                          "assets/Delete Icon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(7),
                                          bottom: _appConfig.rWP(5)),
                                      child: Divider(
                                        thickness: 0.5,
                                        endIndent: 17,
                                        indent: 17,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(9),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(5)),
                                      child: Text(
                                          "Complete the assignment on oops concepts.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10.5)),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(16),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(2)),
                                      child: Row(
                                        children: [
                                          Text("Class ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("9",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Text("Section",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("D",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _appConfig.rWP(29)),
                                            child: Row(
                                              children: [
                                                Text("Due ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10,
                                                        color: Colors.grey)),
                                                Text("03 Oct 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10)),
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
                            SizedBox(
                              height: 6,
                            ),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Container(
                                height: _appConfig.rH(19),
                                width: _appConfig.rW(85.5),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/Tamil.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(3.2),
                                          left: _appConfig.rWP(16.3)),
                                      child: Text("Tamil",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(55)),
                                        child: SvgPicture.asset(
                                          "assets/penn.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(64)),
                                        child: SvgPicture.asset(
                                          "assets/Previewicon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(75)),
                                        child: SvgPicture.asset(
                                          "assets/Delete Icon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(7),
                                          bottom: _appConfig.rWP(5)),
                                      child: Divider(
                                        thickness: 0.5,
                                        endIndent: 17,
                                        indent: 17,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(9),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(5)),
                                      child: Text(
                                          "Complete the assignment on Algebra Topic.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10.5)),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(16),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(2)),
                                      child: Row(
                                        children: [
                                          Text("Class",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("&",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Text("Section",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("10A",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _appConfig.rWP(29)),
                                            child: Row(
                                              children: [
                                                Text("Due ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10,
                                                        color: Colors.grey)),
                                                Text("03 Oct 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10)),
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
                            SizedBox(
                              height: 6,
                            ),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Container(
                                height: _appConfig.rH(19),
                                width: _appConfig.rW(85.5),
                                child: Stack(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1.8),
                                            left: _appConfig.rWP(4)),
                                        child: SvgPicture.asset(
                                          "assets/physics.svg",
                                          height: _appConfig.rH(5),
                                          width: _appConfig.rW(5),
                                        )), // color: HexColor("#f55f5f"),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(3.2),
                                          left: _appConfig.rWP(14.5)),
                                      child: Text("Physics",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11)),
                                    ),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(55)),
                                        child: SvgPicture.asset(
                                          "assets/penn.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(64)),
                                        child: SvgPicture.asset(
                                          "assets/Previewicon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(2.8),
                                            left: _appConfig.rWP(75)),
                                        child: SvgPicture.asset(
                                          "assets/Delete Icon.svg",
                                          height: _appConfig.rH(2.5),
                                          width: _appConfig.rW(2.5),
                                        )),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(7),
                                          bottom: _appConfig.rWP(5)),
                                      child: Divider(
                                        thickness: 0.5,
                                        endIndent: 17,
                                        indent: 17,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(9),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(5)),
                                      child: Text(
                                          "Complete the assignment on Algebra Topic.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10.5)),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(16),
                                          left: _appConfig.rWP(5),
                                          bottom: _appConfig.rWP(2)),
                                      child: Row(
                                        children: [
                                          Text("Class",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("10",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Text("Section",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5,
                                                  color: Colors.grey)),
                                          Text("A",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 9.5)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _appConfig.rWP(29)),
                                            child: Row(
                                              children: [
                                                Text("Due ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10,
                                                        color: Colors.grey)),
                                                Text("21 Oct 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 10)),
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
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: _appConfig.rHP(48), left: _appConfig.rWP(73)),
                  child: SvgPicture.asset(
                    "assets/Create Icon.svg",
                    height: _appConfig.rH(13),
                    width: _appConfig.rW(11),
                  )),
            ]),
          ],
        ),
* */
//////////////////////////////////////////////////////////////////////////
/*
*  Expanded(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: (builder, context) {
                                return Column(
                                  children: [
                                    Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Container(
                                        height: _appConfig.rH(19),
                                        width: _appConfig.rW(85.5),
                                        child: Stack(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(1.8),
                                                    left: _appConfig.rWP(4)),
                                                child: SvgPicture.asset(
                                                  "assets/images/Subject_Icon_Maths.svg",
                                                  height: _appConfig.rH(5),
                                                  width: _appConfig.rW(5),
                                                )), // color: HexColor("#f55f5f"),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(3.2),
                                                  left: _appConfig.rWP(15.5)),
                                              child: Text("Maths",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 11)),
                                            ),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(55)),
                                                child: SvgPicture.asset(
                                                  "assets/penn.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(64)),
                                                child: SvgPicture.asset(
                                                  "assets/Previewicon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(75)),
                                                child: SvgPicture.asset(
                                                  "assets/Delete Icon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(7),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Divider(
                                                thickness: 0.5,
                                                endIndent: 17,
                                                indent: 17,
                                                color: Colors.black,
                                              ),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(9),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Text(
                                                  "Complete the assignment on Algebra Topic.",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 10.5)),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(16),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(2)),
                                              child: Row(
                                                children: [
                                                  Text("Class",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("10",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Text("Section",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("A",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            _appConfig.rWP(29)),
                                                    child: Row(
                                                      children: [
                                                        Text("Due ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey)),
                                                        Text("21 Oct 2020",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10)),
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
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Container(
                                        height: _appConfig.rH(19),
                                        width: _appConfig.rW(85.5),
                                        child: Stack(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(1.8),
                                                    left: _appConfig.rWP(4)),
                                                child: SvgPicture.asset(
                                                  "assets/Computer.svg",
                                                  height: _appConfig.rH(5),
                                                  width: _appConfig.rW(5),
                                                )), // color: HexColor("#f55f5f"),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(2.8),
                                                  left: _appConfig.rWP(15.5)),
                                              child: Text("Computer Science",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 11)),
                                            ),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(55)),
                                                child: SvgPicture.asset(
                                                  "assets/penn.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(64)),
                                                child: SvgPicture.asset(
                                                  "assets/Previewicon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(75)),
                                                child: SvgPicture.asset(
                                                  "assets/Delete Icon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(7),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Divider(
                                                thickness: 0.5,
                                                endIndent: 17,
                                                indent: 17,
                                                color: Colors.black,
                                              ),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(9),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Text(
                                                  "Complete the assignment on oops concepts.",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 10.5)),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(16),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(2)),
                                              child: Row(
                                                children: [
                                                  Text("Class ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("9",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Text("Section",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("D",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            _appConfig.rWP(29)),
                                                    child: Row(
                                                      children: [
                                                        Text("Due ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey)),
                                                        Text("03 Oct 2020",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10)),
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
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Container(
                                        height: _appConfig.rH(19),
                                        width: _appConfig.rW(85.5),
                                        child: Stack(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(1.8),
                                                    left: _appConfig.rWP(4)),
                                                child: SvgPicture.asset(
                                                  "assets/Tamil.svg",
                                                  height: _appConfig.rH(5),
                                                  width: _appConfig.rW(5),
                                                )), // color: HexColor("#f55f5f"),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(3.2),
                                                  left: _appConfig.rWP(16.3)),
                                              child: Text("Tamil",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 11)),
                                            ),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(55)),
                                                child: SvgPicture.asset(
                                                  "assets/penn.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(64)),
                                                child: SvgPicture.asset(
                                                  "assets/Previewicon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(75)),
                                                child: SvgPicture.asset(
                                                  "assets/Delete Icon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(7),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Divider(
                                                thickness: 0.5,
                                                endIndent: 17,
                                                indent: 17,
                                                color: Colors.black,
                                              ),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(9),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Text(
                                                  "Complete the assignment on Algebra Topic.",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 10.5)),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(16),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(2)),
                                              child: Row(
                                                children: [
                                                  Text("Class",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("&",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Text("Section",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("10A",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            _appConfig.rWP(29)),
                                                    child: Row(
                                                      children: [
                                                        Text("Due ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey)),
                                                        Text("03 Oct 2020",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10)),
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
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Container(
                                        height: _appConfig.rH(19),
                                        width: _appConfig.rW(85.5),
                                        child: Stack(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(1.8),
                                                    left: _appConfig.rWP(4)),
                                                child: SvgPicture.asset(
                                                  "assets/physics.svg",
                                                  height: _appConfig.rH(5),
                                                  width: _appConfig.rW(5),
                                                )), // color: HexColor("#f55f5f"),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(3.2),
                                                  left: _appConfig.rWP(14.5)),
                                              child: Text("Physics",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 11)),
                                            ),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(55)),
                                                child: SvgPicture.asset(
                                                  "assets/penn.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(64)),
                                                child: SvgPicture.asset(
                                                  "assets/Previewicon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: _appConfig.rHP(2.8),
                                                    left: _appConfig.rWP(75)),
                                                child: SvgPicture.asset(
                                                  "assets/Delete Icon.svg",
                                                  height: _appConfig.rH(2.5),
                                                  width: _appConfig.rW(2.5),
                                                )),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(7),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Divider(
                                                thickness: 0.5,
                                                endIndent: 17,
                                                indent: 17,
                                                color: Colors.black,
                                              ),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(9),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(5)),
                                              child: Text(
                                                  "Complete the assignment on Algebra Topic.",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 10.5)),
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: _appConfig.rHP(16),
                                                  left: _appConfig.rWP(5),
                                                  bottom: _appConfig.rWP(2)),
                                              child: Row(
                                                children: [
                                                  Text("Class",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("10",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Text("Section",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5,
                                                          color: Colors.grey)),
                                                  Text("A",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 9.5)),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            _appConfig.rWP(29)),
                                                    child: Row(
                                                      children: [
                                                        Text("Due ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey)),
                                                        Text("21 Oct 2020",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 10)),
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
                                  ],
                                );
                              }),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //       top: _appConfig.rHP(48),
                          //       left: _appConfig.rWP(73)),
                          //   child: SvgPicture.asset(
                          //     "assets/Create Icon.svg",
                          //     height: _appConfig.rH(13),
                          //     width: _appConfig.rW(11),
                          //   ),
                          //
                          // ),
                        ],
                      ),
                    ),
* */
