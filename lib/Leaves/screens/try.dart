import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';

import 'package:phygitalz_project_1/Leaves/model/assignment_demo.dart';
import 'package:provider/provider.dart';


class Try extends StatefulWidget {
  const Try({Key key}) : super(key: key);

  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {

  @override
  Widget build(BuildContext context) {
    Future<AssignmentTDemo> a;

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Consumer<FilterProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              RaisedButton(
                onPressed: () async {
                  //priFnt(a);


                },
                textColor: Colors.white,
                color: Colors.transparent,
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.deepOrangeAccent,
                        Colors.pink,
                        Colors.pinkAccent,
                        Colors.purple,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  child: const Text('myname', style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
