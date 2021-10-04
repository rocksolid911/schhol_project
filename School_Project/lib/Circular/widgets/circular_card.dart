import 'package:flutter/material.dart';

import 'package:phygitalz_project_1/config/app_config.dart';

class CircularCard extends StatelessWidget {
  const CircularCard({Key key, this.map}) : super(key: key);
  final Map<String, dynamic> map;
  @override
  Widget build(BuildContext context) {
    AppConfig _appConfig;
    _appConfig = AppConfig(context);
    //DateTime time = map['S40_Created_Date'];
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: _appConfig.rH(18),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Card(
          elevation: 10,
          //child: Text("${map['S40_Circular_Id']}"),
          child: Stack(
            alignment: Alignment.topLeft,
            fit: StackFit.loose,
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.pink),
                  height: _appConfig.rH(10),
                  width: _appConfig.rW(5),
                ),
                top: _appConfig.rH(4),
                left: _appConfig.rW(-2.8),
              ),
              Positioned(
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${map['S40_Circular_Id']}"),
                    SizedBox(
                      width: _appConfig.rW(55),
                      height: 1,
                    ),
                    Chip(
                      label: Text(
                        "${map['S40_Circular_Title']}",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.pink,
                    ),
                  ],
                ),
                left: _appConfig.rW(4),
              ),
              Positioned(
                child: Container(
                  width: _appConfig.rW(80),
                  // color: Colors.yellowAccent,//ref color
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ),
                top: _appConfig.rH(5),
                left: _appConfig.rW(3),
                //bottom: _appConfig.rH(10),
              ),
              //Positioned(child: Text("${map['']}")),
              Positioned(
                child: Container(
                    //color: Colors.yellowAccent,//ref color
                    width: _appConfig.rW(80),
                    child: Text(
                      "plz pay the fee as soon as possible for term 1,before 30 july",
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(fontSize: 12),
                    )),
                top: _appConfig.rH(7.2),
                left: _appConfig.rW(5),
              ),
              Positioned(
                child: Row(
                  children: [
                    Text("issued"),
                    Chip(
                      label: Text(
                        "${map['S40_Created_Date']}",
                        style: TextStyle(fontSize: 8),
                      ),
                      //label: DateTime(time),
                    ),
                  ],
                ),
                top: _appConfig.rH(11),
                left: _appConfig.rW(5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
