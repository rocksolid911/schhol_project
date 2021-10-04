import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/evaluateexam.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/evedataprovider.dart';
import 'package:provider/provider.dart';

class RoundTabReview extends StatefulWidget {
final String review;
final Color clr;
   RoundTabReview({
    Key key, this.review, this.clr,
  }) : super(key: key);

  @override
  _RoundTabReviewState createState() => _RoundTabReviewState();
}

class _RoundTabReviewState extends State<RoundTabReview> {
  List<GivenExam> list;

  @override
  Widget build(BuildContext context) {
    EveDataProvider eveDataProvider = Provider.of<EveDataProvider>(context);
    return FutureBuilder<List<GivenExam>>(
        future: eveDataProvider.getReview(widget.review),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            list =  snapshot.data;

            return Container(
              height: 70.0,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Text("${list.length}"),
                      backgroundColor:  widget.clr,
                    ),
                    SizedBox(
                      // height: _appConfig.rH(1),
                      height: 8,
                    ),
                    Text(
                      "${widget.review}",
                      style: TextStyle(
                          color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
            );

          } else{
            return CircularProgressIndicator();
          }
        }
    );
  }
}