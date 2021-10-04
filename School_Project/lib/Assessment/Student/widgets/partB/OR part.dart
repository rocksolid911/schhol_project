
// import 'package:assssesssment_student_req01_02/assessment_student/req04/submit/submitquestion.dart';
// import 'package:assssesssment_student_req01_02/assessment_student/req04/submit/submitscreen.dart';
// import 'package:assssesssment_student_req01_02/common/app_config.dart';

import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class OrpartB extends StatefulWidget {


  @override
  _OrpartBState createState() => _OrpartBState();
}

class _OrpartBState extends State<OrpartB> {
  AppConfig appConfig;
  bool back= false;
  bool upload = false;

  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig(context);

    return Stack(
      children: [









        Padding(
          padding:  EdgeInsets.only(top: appConfig.rHP(36),left: appConfig.rHP(22)),
          child: Text("OR",style: TextStyle(fontSize: 13,
              fontWeight: FontWeight.w900,color: HexColor("#2e2e2e")),),
        ),

        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(40),left: appConfig.rW(19.5)),
          child: Container(
              width: appConfig.rW(48),

              child: Text("Construct a tangent to smaller circle from a point on the larger circle.Also measure it's length.",style: TextStyle(fontWeight: FontWeight.w500,fontSize:9,
                  color: HexColor("#2e2e2e")),)),
        ),


        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(46),left: appConfig.rW(13)),
          child:   Row(children: [
            Padding(
              padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
              child: Text("4.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
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
        ),


        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(50),left: appConfig.rW(13)),
          child:   Row(children: [
            Padding(
              padding: EdgeInsets.only(top: appConfig.rH(2),left: appConfig.rW(2)),
              child: Text("5.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,
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
        ),


        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(60),left: appConfig.rW(30)),
          child:CustomAnimatedButton(

            height: appConfig.rH(3.6),width: appConfig.rW(18),
            text: "Back",
            startcolor:(0xFFD64575),
            midcolor:(0xFFD64570),endcolor:(0xFF8522A3) ,
            radius: appConfig.rW(5),
            activecolor: Colors.white,
            inactivecolor:Color (0xFFD64570),
            selected:  back,
            onTap: (){

              setState(() {
             back = true;
                upload = false;




              }); Navigator.pop(context);
            },

          )
        ),



        Padding(
          padding: EdgeInsets.only(top: appConfig.rH(60),left: appConfig.rW(53)),
          child: CustomAnimatedButton(

            height: appConfig.rH(3.6),width: appConfig.rW(32),
            text: "Upload & Submit",
            startcolor:(0xFFD64575),
            midcolor:(0xFFD64570),endcolor:(0xFF8522A3) ,
            radius: appConfig.rW(5),
            activecolor: Colors.white,
            inactivecolor:Color (0xFFD64570),
            selected:  upload,
            onTap: (){

              setState(() {
                back = false;
                upload = true;




              });

              //Navigator.push(context, MaterialPageRoute(builder: (context)=>submitscreen()));
            },

          )
        ),



      ],


    );
  }
}
