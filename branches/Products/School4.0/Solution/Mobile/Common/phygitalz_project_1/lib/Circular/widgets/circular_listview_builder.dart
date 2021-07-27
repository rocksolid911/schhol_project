import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:phygitalz_project_1/Circular/models/circular_data.dart';

import 'package:provider/provider.dart';

import 'circular_card.dart';

class InterFace extends StatefulWidget {
  @override
  _InterFaceState createState() => _InterFaceState();
}

class _InterFaceState extends State<InterFace> {
  AppConfig _appConfig;
  bool pressAttention = false;
  bool selectedButtonLive = false;
  bool selectedButtonExpire = false;
  bool selected;
  @override
  Widget build(BuildContext context) {
    pressAttention = selected;
    _appConfig = AppConfig(context);
    context.read<Circulardata>().circularData;
    return RefreshIndicator(
      onRefresh: () async {},
      child: Padding(
        padding: EdgeInsets.only(
            top: _appConfig.rHP(2),
            left: _appConfig.rWP(6),
            right: _appConfig.rWP(6)),
        child: Card(
          elevation: _appConfig.rH(1),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        pressAttention = true;
                        selected=true;
                        selectedButtonLive = true;
                        selectedButtonExpire = false;
                      },
                      child: Container(
                        width: _appConfig.rW(41.5),
                        height: _appConfig.rH(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30)),
                         // color: Colors.blue,
                          gradient: pressAttention==true
                              ? LinearGradient(
                                  colors: [
                                      Color(0xFFFF6600),
                                      Color(0xFFFF0099),
                                      Color(0xFFEE00FF)
                                    ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                              : LinearGradient(colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFFFFFFFF)
                                ]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Live Circular",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ontap(appConfig: _appConfig);
                        setState(() {});
                      },
                      child: Container(
                        width: _appConfig.rW(43.8),
                        height: _appConfig.rH(6),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Expired",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ontap(appConfig: _appConfig),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ontap extends StatelessWidget {
  const ontap({
    Key key,
    @required AppConfig appConfig,
  })  : _appConfig = appConfig,
        super(key: key);

  final AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _appConfig.rH(70),
      child: Consumer<Circulardata>(
        builder: (context, value, child) {
          //value.error must have a value
          return value.map.length == 0 && value.error == false
              ? CircularProgressIndicator()
              : value.error == true
                  ? Text("something oppss")
                  : ListView.builder(
                      itemCount: value.map.length,
                      itemBuilder: (context, index) {
                        return CircularCard(
                          map: value.map[index],
                        );
                      },
                    );
        },
      ),
    );
  }
}

/*
child: Center(
child: Consumer<Circulardata>(
builder: (context, value, child) {
//value.error must have a value
return value.map.length == 0 && value.error==false
? CircularProgressIndicator()
    : value.error==true
? Text("something oppss")
    : ListView.builder(
itemCount: value.map.length,
itemBuilder: (context, index) {
return CircularCard(map: value.map[index],);
},
);
},
),
),
*/
