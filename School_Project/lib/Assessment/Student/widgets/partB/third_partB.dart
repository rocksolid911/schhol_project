
//import 'package:assssesssment_student_req01_02/common/app_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
class thirdQpartb extends StatefulWidget {


  @override
  _thirdQpartbState createState() => _thirdQpartbState();
}

class _thirdQpartbState extends State<thirdQpartb> {
  AppConfig appConfig;
  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig(context);
    return Stack(

      children: [



        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(27),left: appConfig.rW(13)),
          child:   Row(children: [
            Padding(
              padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
              child: Text("3.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
                  color: HexColor("#2e2e2e")),),
            ),
            Padding(
              padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
              child: Container(
                  width: appConfig.rW(48),

                  child: Text("Check whether 6n can end with the digit 0 for any natural number n.",style: TextStyle(fontWeight: FontWeight.w500,fontSize:9,
                      color: HexColor("#2e2e2e")),)),
            ),

            SizedBox(width: appConfig.rW(15),),


            Padding(
              padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
              child: Text("03",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
                  color: HexColor("#2e2e2e")),),
            ),

          ],),
        )




      ],

    );
  }
}
