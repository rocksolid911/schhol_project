import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';







class UpdateMeetingLink extends StatefulWidget {


  @override
  _UpdateMeetingLinkState createState() => _UpdateMeetingLinkState();
}

class _UpdateMeetingLinkState extends State<UpdateMeetingLink> {

  AppConfig _app_config;
  @override
  Widget build(BuildContext context) {
    YYDialog yyDialog;
    _app_config = AppConfig(context);
    return Scaffold(
      body: SafeArea(child: Container(
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,

          child:Column(children: [ Container(
            height: _app_config.rH(13),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [HexColor("#d64575"), HexColor("#8522a3")])),
            child: Row(
              children: [
                SizedBox(
                  width: _app_config.rW(4),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 34,
                  ),
                  onTap: ()=>Navigator.pop(context),
                ),
                SizedBox(
                  width: _app_config.rW(3),
                ),
                Text(
                  "Update Meeting Link",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: _app_config.rW(25),
                ),
                Icon(
                  Icons.search,
                  size: 34,
                  color: Colors.white,
                )
              ],
            ),
          ),

            SizedBox(
              height: _app_config.rH(10),
            ),

            Container(margin: EdgeInsets.only(left: _app_config.rWP(10),right: _app_config.rWP(10)


            ),child: TextField(maxLines: 2,decoration: InputDecoration(labelText:"Copy & Paste Meeting Link here",alignLabelWithHint: true,labelStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),)),


            SizedBox(
              height: _app_config.rH(10),
            ),


            Row(
              children: [SizedBox(width: _app_config.rW(25),),
                Container(
                    height: _app_config.rH(4),width: _app_config.rW(24),decoration: BoxDecoration(border: Border.all(color: HexColor("#d64575")),borderRadius: BorderRadius.all(Radius.circular(40)))
                    ,child: TextButton(onPressed: () {  },
                    child: Text("Cancel",style: TextStyle(color:HexColor("#d64575"),fontWeight: FontWeight.bold,fontSize: 12 ),),)),SizedBox(width: _app_config.rW(5),),

                Container(
                    height: _app_config.rH(4),width: _app_config.rW(24),decoration: BoxDecoration(gradient: LinearGradient(colors: [HexColor("#d64575"), HexColor("#8522a3")]),borderRadius: BorderRadius.all(Radius.circular(40)))
                    ,child: TextButton(onPressed: () { Navigator.pop(context); },
                    child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),)),



              ],
            )







          ],)
      ),),
    );
  }
}
