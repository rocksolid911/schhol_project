import 'package:custombutton/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/approved_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/buttons_common.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/buttonsterm.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/conducted.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/draft_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/evaluated_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/rejected_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/submitted_cards.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/student_submitted_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';

class AssTeacherA extends StatefulWidget {
  const AssTeacherA({Key key}) : super(key: key);

  @override
  _AssTeacherAState createState() => _AssTeacherAState();
}

class _AssTeacherAState extends State<AssTeacherA>
    with SingleTickerProviderStateMixin {
  bool Classs = false;
  bool Periodic = false;
  bool Summative = false;

  bool term1 = false;
  bool term2 = false;
  bool term3 = false;
  TabController controller;
  var scrollController = ScrollController();
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

  //TODO implement dispose
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
        body: NestedScrollView(
      controller: scrollController,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(parent: PageScrollPhysics()),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: _appConfig.rH(10),
                      width: _appConfig.rW(100),
                      //color: Colors.pinkAccent,
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: _appConfig.rWP(1),
                                bottom: _appConfig.rHP(4)),
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
                          Padding(
                            padding: EdgeInsets.only(bottom: _appConfig.rHP(4)),
                            child: Text(
                              "Assessment",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: _appConfig.rHP(4)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //TODO space for filter buttons
                    SizedBox(
                      height: _appConfig.rH(17),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // CustomButton(
                                //   bdrRadius: 25,
                                //   text: "Class",
                                //   startcolor: 0xFFD64575,
                                //   midcolor: 0xFFD64570,
                                //   endcolor: 0xFF8522A3,
                                //   onTap: (){},
                                //   selected: true,
                                //   activecolor: Colors.white,
                                //   inactivecolor: Color(0xFFD64570),
                                // ),
                                CustomAnimatedButton(
                                  text: "Class",
                                  selected: Classs,
                                  onTap: () {
                                    setState(() {
                                      Classs = true;
                                      Periodic = false;
                                      Summative = false;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(25),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                                CustomAnimatedButton(
                                  text: "Periodic",
                                  selected: Periodic,
                                  onTap: () {
                                    setState(() {
                                      Classs = false;
                                      Periodic = true;
                                      Summative = false;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(25),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                                CustomAnimatedButton(
                                  text: "Summative",
                                  selected: Summative,
                                  onTap: () {
                                    setState(() {
                                      Classs = false;
                                      Periodic = false;
                                      Summative = true;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(32),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // CustomButton(
                                //   bdrRadius: 25,
                                //   text: "Class",
                                //   startcolor: 0xFFD64575,
                                //   midcolor: 0xFFD64570,
                                //   endcolor: 0xFF8522A3,
                                //   onTap: (){},
                                //   selected: true,
                                //   activecolor: Colors.white,
                                //   inactivecolor: Color(0xFFD64570),
                                // ),
                                CustomAnimatedButton(
                                  text: "Term 1",
                                  selected: term1,
                                  onTap: () {
                                    setState(() {
                                      term1 = true;
                                      term2 = false;
                                      term3 = false;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(25),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                                CustomAnimatedButton(
                                  text: "Term 2",
                                  selected: term2,
                                  onTap: () {
                                    setState(() {
                                      term1 = false;
                                      term2 = true;
                                      term3 = false;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(25),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                                CustomAnimatedButton(
                                  text: "Term 3",
                                  selected: term3,
                                  onTap: () {
                                    setState(() {
                                      term1 = false;
                                      term2 = false;
                                      term3 = true;
                                    });
                                  },
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(25),
                                  startcolor: 0xFFD64575,
                                  midcolor: 0xFFD64570,
                                  endcolor: 0xFF8522A3,
                                  radius: 25,
                                  activecolor: Colors.white,
                                  inactivecolor: Color(0xFFD64570),
                                  fntsize: 12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: _appConfig.rH(2),
                    ),
                    PreferredSize(
                      preferredSize: new Size(200.0, 200.0),
                      child: new Container(
                        width: double.infinity,
                        child: new TabBar(
                          isScrollable: true,
                          indicatorColor: Colors.purple,
                          tabs: [
                            Container(
                              height: 70.0,
                              child: new Tab(
                                //text: 'hello'
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Excellent",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                //text: 'hello'
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.teal,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Good",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.purple,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Fair",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.deepOrangeAccent,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Poor",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.deepOrangeAccent,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Poor",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.deepOrangeAccent,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Poor",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: new Tab(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Text("03"),
                                      backgroundColor: Colors.deepOrangeAccent,
                                    ),
                                    SizedBox(
                                      // height: _appConfig.rH(1),
                                      height: 8,
                                    ),
                                    Text(
                                      "Poor",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          controller: controller,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
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
    ));
  }
}
// SliverAppBar(
//   leading: GestureDetector(
//     child: Icon(
//       Icons.sort,
//       color: Colors.white,
//     ),
//     onTap: () {
//       _drawerkey.currentState.openDrawer();
//     },
//   ),
//   actions: [
//     Padding(
//       padding: EdgeInsets.only(right: _appConfig.rWP(4)),
//       child: Icon(
//         Icons.search,
//         color: Colors.white,
//       ),
//     ),
//   ],
//   toolbarHeight: 50,
//   title: Text("Assignment"),
//   pinned: true,
//   snap: true,
//   floating: true,
//   //elevation: 15,
//   backgroundColor: Colors.pinkAccent,
//   flexibleSpace: FlexibleSpaceBar(
//
//     background: SvgPicture.asset(
//       "assets/images/Timetable_Calendar_Card.svg",
//       fit: BoxFit.none,
//     ),
//   ),
//   shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(30),
//           bottomRight: Radius.circular(30))),
//   collapsedHeight: 50,
//   expandedHeight: 160.0,
//   // expandedHeight: 220.0,
//   // **Is it intended ?** flexibleSpace.title overlaps with tabs title.
//   // flexibleSpace: FlexibleSpaceBar(
//   //   title: Text("FlexibleSpace title"),
//   // ),
//   bottom: TabBar(
//     isScrollable: true,
//     indicatorSize: TabBarIndicatorSize.label,
//     indicatorWeight: 4,
//     labelPadding: EdgeInsets.only(bottom: 8,left: 25,right: 10),
//     indicator: UnderlineTabIndicator(
//         borderSide: BorderSide(color: Colors.white),
//         insets: EdgeInsets.only(bottom: 8,left: 4)),
//     tabs: [
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "03",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Draft",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//         // text: "3",
//         // child: Text("Draft"),
//       ),
//
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "12",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Submitted",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "08",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Approved",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "07",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Rejected",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "11",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Scheduled",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "05",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Conducted",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//       Tab(
//         child: Column(
//           children: [
//             Text(
//               "07",
//               style: TextStyle(color: Colors.white,fontSize: 18),
//             ),
//
//             Text(
//               "Evaluated",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//     ],
//     controller: controller,
//
//   ),
// ),
// SliverList(

// body: TabBarView(
//   controller: controller,
//   children: <Widget>[
//     //Center(child: Text("Tab one")),
//     Draftcard(),
//     //Center(child: Text("Tab two")),
//     SubmittedCard(),
//     //Center(child: Text("Tab three")),
//     Approvedcard(),
//     //Center(child: Text("Tab four")),
//     RejectedCard(),
//     // Center(child: Text("Tab five")),
//     //TODO need to be modified
//     Approvedcard(),
//     ConductedView(),
//     //Center(child: Text("Tab six")),
//     //Center(child: Text("Tab seven")),
//     EvalutaedCard(),
//   ],
// ),
