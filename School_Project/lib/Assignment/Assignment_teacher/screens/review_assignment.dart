import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/rate_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/save_cancel_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/status_button.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class ReviewAssignment extends StatefulWidget {
  const ReviewAssignment({Key key}) : super(key: key);

  @override
  _ReviewAssignmentState createState() => _ReviewAssignmentState();
}

class _ReviewAssignmentState extends State<ReviewAssignment> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment Review"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ), //this section help to cut the bottom area
        // backgroundColor: Colors.pink,

        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFE86FE3),
                  Color(0xFFA82AA8),
                  Color(0xFFCC00CC),
                ],
              ),
            ),
          ),
        ),
        actions: [], //to add gradient color to app bar
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: _appConfig.rWP(8),
                    right: _appConfig.rWP(8),
                    bottom: _appConfig.rHP(2),
                    top: _appConfig.rHP(4)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Subject_Icon_W.Name_Chemistry.svg",
                      width: _appConfig.rW(10),
                      height: _appConfig.rH(10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: _appConfig.rWP(4),
                        bottom: _appConfig.rHP(0),
                      ),
                      child: Text(
                        "Chemistry",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: _appConfig.rWP(8),
                    bottom: _appConfig.rWP(8),
                    right: _appConfig.rWP(8)),
                child: Text(
                  "complete the Exercise as given",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: _appConfig.rWP(2),
                  bottom: _appConfig.rHP(2),
                  right: _appConfig.rWP(2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Name is name",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Vishall23",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right:8.0),
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Submitted Date",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:82),
                          child: Text(
                            "21 Oct",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Container(
                  height: _appConfig.rH(20),
                  width: _appConfig.rW(90),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: _appConfig.rWP(1),
                            right: _appConfig.rWP(24),
                            top: _appConfig.rHP(3)),
                        child: Text(
                          "Submmited Assignment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: _appConfig.rWP(1),
                    right: _appConfig.rWP(56),
                    top: _appConfig.rHP(3)),
                child: Opacity(
                  opacity: 0.5,
                  child: Text("Select status"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: _appConfig.rWP(4)),
                child: ButtonsWidget(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: _appConfig.rWP(8),
                    right: _appConfig.rWP(55),
                    top: _appConfig.rHP(3)),
                child: Opacity(
                  opacity: 0.5,
                  child: Text("Rate Assignment"),
                ),
              ),
              RateButton(),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Teachers feedback",
                    focusedBorder: OutlineInputBorder(
                      // gapPadding: 3,
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      //gapPadding: 3,
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                    ),
                    hintText: 'Teachers feedback',
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Container(
                  height: _appConfig.rH(20),
                  width: _appConfig.rW(90),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: _appConfig.rWP(4),
                            //right: _appConfig.rWP(1),
                            top: _appConfig.rHP(1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Attach corrected Assignment",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(right: _appConfig.rWP(2.5)),
                              //TODO make it an iconbutton
                              child: Icon(
                                Icons.edit,
                                color: Colors.pinkAccent,
                                size: _appConfig.rH(4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: _appConfig.rWP(42)),
                child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      "max upload size 500mb",
                      style: TextStyle(fontSize: 12),
                    ),),
              ),
              SizedBox(height: _appConfig.rH(6),),
              Padding(
                padding:  EdgeInsets.only(left:_appConfig.rWP(24),bottom: _appConfig.rHP(1)),
                child: SaveCancel(),
              ),
              SizedBox(height: _appConfig.rH(4),),
            ],
          ),
        ),
      ),
    );
  }
}
