
//import 'package:assssesssment_student_req01_02/common/app_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class intropartB extends StatefulWidget {


  @override
  _intropartBState createState() => _intropartBState();
}

class _intropartBState extends State<intropartB> {
  AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig(context);

    return Stack(
      children: [









        Padding(
          padding:  EdgeInsets.only(top: appConfig.rHP(4),left: appConfig.rHP(23)),
          child: Text("Part-B",style: TextStyle(fontSize: 12,
              fontWeight: FontWeight.w900,color: HexColor("#2e2e2e")),),
        ),


        Padding(
          padding:  EdgeInsets.only(top: appConfig.rHP(8),left: appConfig.rHP(9),),
          child: Text("[All questions are compulsory. In cases of internal choices,",style: TextStyle(fontSize: 8,
              fontWeight: FontWeight.w800,color: HexColor("#2e2e2e")),),
        ),

        Padding(
          padding:  EdgeInsets.only(top: appConfig.rHP(9.5),left: appConfig.rHP(9),),
          child: Text("attempt anyone.]",style: TextStyle(fontSize: 8,
              fontWeight: FontWeight.w800,color: HexColor("#2e2e2e")),),
        ),




        Padding(
          padding:  EdgeInsets.only(top: appConfig.rHP(14),left: appConfig.rHP(20.5),),
          child: Text("5*3=15",style: TextStyle(fontSize: 11,letterSpacing: 2,
              fontWeight: FontWeight.w600,color: HexColor("#2e2e2e")),),
        ),


      ],


    );
  }
}
