import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';


class submtted_card extends StatefulWidget {


  @override
  _submtted_cardState createState() => _submtted_cardState();
}

class _submtted_cardState extends State<submtted_card> {

  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Column(
      children: [

        Expanded(
          child: Container(
           // height: _appConfig.rH(70),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (builder, context) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Container(
                            height: _appConfig.rH(19),
                            width: _appConfig.rW(85.5),
                            child: Stack(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(1.8),
                                        left: _appConfig.rWP(4)),
                                    child:SvgPicture.asset("assets/maths.svg", height: _appConfig.rH(5),
                                      width: _appConfig.rW(5),)
                                ),// color: HexColor("#f55f5f"),


                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(3.2),
                                      left: _appConfig.rWP(15.5)),
                                  child: Text("Maths",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 11)),
                                ),





                                Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(2.8),
                                        left: _appConfig.rWP(64)),
                                    child:SvgPicture.asset("assets/preview.svg", height: _appConfig.rH(2.5),
                                      width: _appConfig.rW(2.5),)
                                ),





                                Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(2.8),
                                        left: _appConfig.rWP(75)),
                                    child:SvgPicture.asset("assets/send.svg", height: _appConfig.rH(2.5),
                                      width: _appConfig.rW(2.5),)
                                ),






                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(7),
                                      bottom: _appConfig.rWP(5)),
                                  child: Divider(
                                    thickness: 0.5,
                                    endIndent: 17,
                                    indent: 17,
                                    color: Colors.black,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(9),
                                      left: _appConfig.rWP(5),
                                      bottom: _appConfig.rWP(5)),
                                  child: Text(
                                      "Complete the assignment on Algebra Topic.",
                                      style: TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 10.5)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(13.5),
                                      left: _appConfig.rWP(5.5),
                                      bottom: _appConfig.rWP(5)),
                                  child: Row(
                                    children: [

                                      Text(
                                          "Attached Assignment Documents",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 7.5)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: _appConfig.rHP(15.7),left: _appConfig.rHP(2.7)),
                                  child: SvgPicture.asset("assets/documt.svg",height:_appConfig.rH(1.7),width: _appConfig.rW(2),),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: _appConfig.rHP(16),left: _appConfig.rHP(4.3)),
                                  child: Text("Document Name.Pdf ",style: TextStyle( color: Colors.black,

                                      fontSize: 7.5)),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(top: _appConfig.rHP(15.7),left: _appConfig.rHP(18.3)),
                                  child: SvgPicture.asset("assets/delete.svg",height:_appConfig.rH(1.5),width: _appConfig.rW(1.5),),
                                ),




                                Padding(
                                  padding: EdgeInsets.only(
                                      left: _appConfig.rWP(60),top: _appConfig.rHP(15.5) ),
                                  child: Row(
                                    children: [
                                      Text("Due ",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.w900,
                                              fontSize: 9,
                                              color: Colors.grey)),
                                      Text("20 July 2020",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.w900,
                                              fontSize: 9)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),

                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
