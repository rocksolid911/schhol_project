// import 'package:assssesssment_student_req01_02/common/app_config.dart';
// import 'package:assssesssment_student_req01_02/common/appbar.dart';
// import 'package:assssesssment_student_req01_02/common/bottomnav.dart';

import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

import 'OR part.dart';
import 'first_partB.dart';
import 'intro_partb.dart';
import 'second_partB.dart';
import 'third_partB.dart';

class CordinatorQuestions extends StatefulWidget {
  @override
  _CordinatorQuestionsState createState() => _CordinatorQuestionsState();
}

class _CordinatorQuestionsState extends State<CordinatorQuestions> {
  AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig(context);
    return Scaffold(
      bottomNavigationBar: mYBottomNav(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            //appbarr(),

            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (index, context) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          intropartB(),
                          firstQpartb(),
                         // secondQpartb(),
                          //thirdQpartb(),
                          //OrpartB()
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
