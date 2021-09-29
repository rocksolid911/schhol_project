import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/evedataprovider.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/evaluated_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/reviewcard.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/roundtabreview.dart';
import 'package:provider/provider.dart';

class StudentReview extends StatefulWidget {
  StudentReview({Key key}) : super(key: key);

  @override
  _StudentReviewState createState() => _StudentReviewState();
}

class _StudentReviewState extends State<StudentReview>
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
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(25)),
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
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        Text(
                          "Student Review",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //TODO space for filter buttons
                  // SizedBox(
                  //   height: _appConfig.rH(6),
                  //
                  // ),
                  // Divider(),
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
                          RoundTabReview(review: "Excellent",clr: Colors.green,),
                          RoundTabReview(review: "Good",clr: Colors.purple,),
                          RoundTabReview(review: "fair",clr: Colors.yellow,),
                          RoundTabReview(review: "Poor",clr: Colors.deepOrangeAccent,),
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
      body: new TabBarView(
        children: <Widget>[
          ReviewCard(review: "Excellent",),
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
        ],
        controller: controller,
      ),
    );
  }
}


