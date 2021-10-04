// import 'package:assssesssment_student_req01_02/AssessmentCordinator/REQ03/Questionjson/QuestionModelClass.dart';
// import 'package:assssesssment_student_req01_02/AssessmentCordinator/REQ03/Questionjson/QuestionProvider.dart';
// import 'package:assssesssment_student_req01_02/common/app_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Assessment/Student/provider/Questionjson/QuestionModelClass.dart';
import 'package:phygitalz_project_1/Assessment/Student/provider/Questionjson/QuestionProvider.dart';
//import 'package:phygitalz_project_1/Assessment/Student/models/Questionjson/QuestionModelClass.dart';
//import 'package:phygitalz_project_1/Assessment/Student/models/Questionjson/QuestionProvider.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';

class firstQpartb extends StatefulWidget {
  @override
  _firstQpartbState createState() => _firstQpartbState();
}

class _firstQpartbState extends State<firstQpartb> {
  AppConfig appConfig;

  //@override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   final firstquestion = Provider.of<QuestionProvider>(context,listen: false);
  //   firstquestion.GetQuestionData();
  // }
  @override
  Widget build(BuildContext context) {
    QuestionProvider firstquestion =
        Provider.of<QuestionProvider>(context, listen: false);
    appConfig = AppConfig(context);

    return Container(
      color: Colors.lightBlueAccent,
      height: 300,
      width: 300,
      child: FutureBuilder(
        future: firstquestion.getShortQustion(),
        builder: (BuildContext context,
            AsyncSnapshot<List<Short>> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: appConfig.rH(2),
                                    left: appConfig.rW(2)),
                                child: Text(
                                  "${snapshot.data[index].s40QuestNumber}",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: HexColor("#2e2e2e")),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: appConfig.rH(2),
                                    left: appConfig.rW(2)),
                                child: Container(
                                    width: appConfig.rW(48),
                                    child: Text(
                                      //"Describe your qustion",
                                      "${snapshot.data[index].s40QuestName}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9,
                                          color: HexColor("#2e2e2e")),
                                    )),
                              ),
                              SizedBox(
                                width: appConfig.rW(15),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: appConfig.rH(2),
                                    left: appConfig.rW(2)),
                                child: Text(
                                  "${snapshot.data[index].s40MarksAllotted}",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: HexColor("#2e2e2e")),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
              );
            },
          );
        },
      ),
    );
  }
}
