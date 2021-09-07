import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class SaveCancel extends StatefulWidget {
  const SaveCancel({Key key}) : super(key: key);

  @override
  _SaveCancelState createState() => _SaveCancelState();
}

class _SaveCancelState extends State<SaveCancel> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Container(
        // width: _appConfig.rWP(150),
        // height: _appConfig.rHP(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //padding: EdgeInsets.zero,
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(5),
                    width: _appConfig.rW(22),
                    text: "Cancel",
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(9),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    selected: selectedButton10B,
                    onTap: (){
                      setState(() {
                        selectedButton10B = true;
                        selectedButton10A = false;

                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(5),
                    width: _appConfig.rW(22),
                    text: "Save",
                    selected: selectedButton10A,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(9),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        selectedButton10B = false;
                        selectedButton10A = true;
                        Navigator.pop(context);

                      });
                    },
                  ),
                ),

                // ButtonAnimated(),
                // ButtonAnimated(),
              ],
            ),
          ],
        ),
      );

  }
}
