import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'assignment_student_submitted.dart';

import "package:hexcolor/hexcolor.dart";

class TabBarr extends StatefulWidget {
  @override
  _TabBarrState createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> {
  AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return DefaultTabController(
      length: 4,
      child:
       // bottomNavigationBar: mYBottomNav(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: _appConfig.rH(20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      HexColor("#d64575"),
                      HexColor("#8522a3"),
                    ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(top: _appConfig.rH(13)),
                    child: TabBar(
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding:
                          EdgeInsets.only(left: 26, right: 26, bottom: 2),
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
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  StudentAssignment(),
                  StudentAssignment(),
                  StudentAssignment(),
                  StudentAssignment(),
                ]),
              )
            ],
          ),
        ),

    );
  }
}
