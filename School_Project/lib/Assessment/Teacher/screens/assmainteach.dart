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
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/roundedtaball.dart';
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
  bool Classs = true;
  bool Periodic = false;
  bool Summative = false;

  bool term1 = true;
  bool term2 = false;
  bool term3 = false;
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

  //TODO implement dispose
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      drawer: myDrawer(),
      bottomNavigationBar: mYBottomNav(),
      key: _drawerkey,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(45)),
        child: Container(
          //color: Colors.green,
          child: new SafeArea(
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
                          padding:  EdgeInsets.only(left: _appConfig.rWP(1),bottom: _appConfig.rHP(4)),
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
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
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
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
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
                            CustomAnimatedButton(
                                text: "Class",
                                selected: Classs,
                                onTap: (){
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
                              onTap: (){
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
                              onTap: (){
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
                              CustomAnimatedButton(
                                text: "Term 1",
                                selected: term1,
                                onTap: (){
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
                                onTap: (){
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
                                onTap: (){
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
                    ],),
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
                         RoundedTabAll(type: "Periodic",term: "Term 1",),

                          Container(
                            height: 70.0,
                            child: new Tab(
                              //text: 'hello'
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: Text("06"),
                                    backgroundColor: Colors.teal,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Submitted",
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
                                    child: Text("08"),
                                    backgroundColor: Colors.purple,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Approved",
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
                                    child: Text("04"),
                                    backgroundColor: Colors.deepOrangeAccent,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Rejected",
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
                                    child: Text("12"),
                                    backgroundColor: Colors.brown,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Scheduled",
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
                                    child: Text("09"),
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Conducted",
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
                                    child: Text("15"),
                                    backgroundColor: Colors.yellow,
                                  ),
                                  SizedBox(
                                    // height: _appConfig.rH(1),
                                    height: 8,
                                  ),
                                  Text(
                                    "Evaluated",
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
      ),
        

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          //Center(child: Text("Tab one")),
          //Draftcard(),
          chooseTab(),
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
    );
  }
  chooseTab(){
    if(Classs&&term1){
      return Draftcard(type: "Class",term: "Term 1",);
    }else if(Classs&&term2){
      return Draftcard(type: "Class",term: "Term 2",);
    }else if(Classs&&term3){
      return Draftcard(type: "Class",term: "Term 3",);
    }else if(Periodic&&term1){
      return Draftcard(type: "Periodic",term: "Term 1",);
    }else if(Periodic&&term2){
      return Draftcard(type: "Periodic",term: "Term 2",);
    }else if(Periodic&&term3){
      return Draftcard(type: "Periodic",term: "Term 3",);
    }else if(Summative&&term1){
      return Draftcard(type: "Summative",term: "Term 1",);
    }else if(Summative&&term2){
      return Draftcard(type: "Summative",term: "Term 2",);
    }else
      return Draftcard(type: "Summative",term: "Term 3",);

  }
  String chsbyType(){}
}


