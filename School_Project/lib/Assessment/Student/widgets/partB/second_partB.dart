
//import 'package:assssesssment_student_req01_02/common/app_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
class secondQpartb extends StatefulWidget {


  @override
  _secondQpartbState createState() => _secondQpartbState();
}

class _secondQpartbState extends State<secondQpartb> {
  AppConfig appConfig;
  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig(context);
    return Padding(
      padding: EdgeInsets.only(top: appConfig.rH(23),left: appConfig.rW(13)),
      child:   Row(children: [
        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
          child: Text("2.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
              color: HexColor("#2e2e2e")),),
        ),
        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
          child: Container(
              width: appConfig.rW(48),

              child: Text("Describe Solar Energy",style: TextStyle(fontWeight: FontWeight.w500,fontSize:9,
                  color: HexColor("#2e2e2e")),)),
        ),

        SizedBox(width: appConfig.rW(15),),


        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
          child: Text("03",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
              color: HexColor("#2e2e2e")),),
        ),

      ],),
    );
  }
}
