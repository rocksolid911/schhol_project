import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';

class Corrected extends StatefulWidget {
  const Corrected({Key key}) : super(key: key);

  @override
  _CorrectedState createState() => _CorrectedState();
}

class _CorrectedState extends State<Corrected> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Column(
      children: [
        SizedBox(
          height: _appConfig.rH(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(top:_appConfig.rHP(1),right: _appConfig.rWP(30)),
                child: Text("Exam Type : Summetive"),
              ),
              Padding(
                padding: EdgeInsets.only(left: _appConfig.rWP(8)),
                child: Row(
                  children: [
                    Text(
                      "class : 10",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "section : B",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Subject: Mathmatics",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: _appConfig.rWP(44)),
                child: Text(
                  "Date : 20 sept 2021",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right:  _appConfig.rWP(44)),
                child: Text("Total mark : 100"),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: _appConfig.rH(59.3),
            // color: Colors.grey,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (builder, context) {
                return Column(
                  children: [
                    // Text("hello"),
                    SizedBox(
                      width: _appConfig.rW(90),
                      height: _appConfig.rH(16),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 12.0,top: 8),
                                child: Text("Roll no : 121"),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 8.0,right: 8.0),
                                child: ElevatedButton(
                                  onPressed: () {

                                  },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(22.0),
                                            //side: BorderSide(color: Colors.red)
                                          ))),
                                  child: Text("View"),
                                ),
                              ),
                            ],),
                            Divider(),
                            Padding(
                              padding:  EdgeInsets.only(right: _appConfig.rWP(50)),
                              child: Text("Mark 79/100"),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
