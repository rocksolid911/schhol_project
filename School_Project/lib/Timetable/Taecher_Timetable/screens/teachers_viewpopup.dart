import 'package:flutter/material.dart';


import "package:hexcolor/hexcolor.dart";
import 'package:phygitalz_project_1/config/app_config.dart';

//why use main here?

class ViewPopUp extends StatefulWidget {
  @override
  _ViewPopUpState createState() => _ViewPopUpState();
}

class _ViewPopUpState extends State<ViewPopUp> {
  AppConfig _app_config;
  @override
  Widget build(BuildContext context) {
    _app_config = AppConfig(context);
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: _app_config.rH(13),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      colors: [HexColor("#d64575"), HexColor("#8522a3")])),
              child: Row(
                children: [
                  SizedBox(
                    width: _app_config.rW(4),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 34,
                    ),
                    onTap: ()=>Navigator.pop(context),
                  ),
                  SizedBox(
                    width: _app_config.rW(3),
                  ),
                  Text(
                    "View Lesson Plan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: _app_config.rW(30),
                  ),
                  Icon(
                    Icons.search,
                    size: 34,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(height: _app_config.rH(5)),
            Row(
              children: [
                SizedBox(
                  width: _app_config.rW(8),
                ),
                Text(
                  "Planned Date",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: _app_config.rW(34),
                ),
                Text("Completed Date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(height: _app_config.rH(4.5)),
            Row(
              children: [
                SizedBox(width: _app_config.rW(8.5)),
                Text("16-June-2020",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w900)),
                SizedBox(
                  width: _app_config.rW(35),
                ),
                Text("16-June-2020",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 10,
                        color: Colors.black)),
              ],
            ),
            SizedBox(height: _app_config.rH(5)),
            Row(
              children: [
                SizedBox(
                  width: _app_config.rW(9),
                ),
                Text("Status",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(height: _app_config.rH(4)),
            Row(
              children: [
                SizedBox(
                  width: _app_config.rW(9),
                ),
                Text("Completed",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  //shrinkWrap: false,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("General Comments",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Procedure",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Aids/Materials Needed",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Teacher's Notes",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Assessment Quiz/Test Links",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Pre Requisite Knowledge",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Warm Up Session",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Student Deliverable",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Session Closure",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Learning Outcome",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                      Container(
                          margin: EdgeInsets.only(
                              left: _app_config.rWP(9),
                              right: _app_config.rWP(9)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: _app_config.rH(10),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4),
                                  top: _app_config.rHP(1.5)),
                              child: Text("Observations Made",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: _app_config.rH(2)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: _app_config.rWP(4.1),
                                  top: _app_config.rHP(4.9)),
                              child: Text("Complete the lesson chapterwise",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ])),
                      SizedBox(height: _app_config.rH(4)),
                    ]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
