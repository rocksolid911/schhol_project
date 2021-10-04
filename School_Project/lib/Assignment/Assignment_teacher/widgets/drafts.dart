import 'package:custombutton/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/student_submitted_card.dart';

class DraftAssignment extends StatefulWidget {
  DraftAssignment({
    Key key,
  }) : super(key: key);

  @override
  _DraftAssignmentState createState() => _DraftAssignmentState();
}

class _DraftAssignmentState extends State<DraftAssignment> {
  AppConfig _appConfig;
  bool homework = true;
  bool labrecord = false;
  bool portfolio = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return Column(
      children: [
        Container(
          height: _appConfig.rH(9),
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
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                CustomButton(
                  bdrRadius: 20,
                  text: "Homework",
                  startcolor: (0xFFD73865),
                  midcolor: (0xFFA40DAB),
                  endcolor: (0xFF8A09B1),
                  selected: homework,
                  onTap: () {
                    setState(() {
                      homework = true;
                      labrecord = false;
                      portfolio = false;
                      print("value of homework:$homework");
                    });

                  },
                  activecolor: Colors.white,
                  inactivecolor: Colors.pinkAccent,
                ),
                SizedBox(width: _appConfig.rW(4)),
                CustomButton(
                  bdrRadius: 20,
                  text: "LabRecord",
                  startcolor: (0xFFD73865),
                  midcolor: (0xFFA40DAB),
                  endcolor: (0xFF8A09B1),
                  selected: labrecord,
                  onTap: () {
                    setState(() {
                      homework = false;
                      labrecord = true;
                      portfolio = false;
                      print("value of lab:$labrecord");
                    });
                  },
                  activecolor: Colors.white,
                  inactivecolor: Colors.pinkAccent,
                ),
                SizedBox(width: _appConfig.rW(4)),
                CustomButton(
                  bdrRadius: 20,
                  text: "Portfolio",
                  startcolor: (0xFFD73865),
                  midcolor: (0xFFA40DAB),
                  endcolor: (0xFF8A09B1),
                  selected: portfolio,
                  onTap: () {
                    setState(() {
                      homework = false;
                      labrecord = false;
                      portfolio = true;
                      print("value of port :$portfolio");
                    });
                  },
                  activecolor: Colors.white,
                  inactivecolor: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ),
    // homework?SubmitCard(type: "Home work",):CircularProgressIndicator() ,
         choosetype(),
        //labrecord?SubmitCard(type: "Lab Record",)  :CircularProgressIndicator(),
      ],
    );
  }

  Widget choosetype() {
    if(homework){
      return SubmitCard(type: "Home work",stat: "Draft",);
    }else if(labrecord){
      return SubmitCard(type: "Lab Record",stat: "Draft",);
    }else{
      return SubmitCard(type: "Port Folio",stat: "Draft",);
    }
  }
}
