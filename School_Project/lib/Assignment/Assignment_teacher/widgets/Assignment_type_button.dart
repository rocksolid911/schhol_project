import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class TypeAssButton extends StatefulWidget {
  const TypeAssButton({Key key}) : super(key: key);

  @override
  _TypeAssButtonState createState() => _TypeAssButtonState();
}

class _TypeAssButtonState extends State<TypeAssButton> {
  AppConfig _appConfig;
  bool homeworkbutton = false;
  bool labrecordButton = false;
  bool portfoliobutton = false;

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
                CustomAnimatedButton(
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(31),
                  text: "Home Work",
                  startcolor: 0xFFDF003D,
                  midcolor: 0xFFDF0075,
                  endcolor: 0xFFDF00AD,
                  radius: _appConfig.rW(5),
                  activecolor: Colors.white,
                  inactivecolor: Colors.pinkAccent,
                  selected: homeworkbutton,
                  onTap: (){
                    setState(() {
                      homeworkbutton = true;
                      labrecordButton = false;

                      portfoliobutton = false;
                    });
                  }, fntsize: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(5),
                    width: _appConfig.rW(31),
                    text: "Lab Record",
                    selected: labrecordButton,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(5),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        homeworkbutton = false;
                        labrecordButton = true;

                        portfoliobutton = false;
                      });
                    }, fntsize: 12,
                  ),
                ),
                Expanded(
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(5),
                    width: _appConfig.rW(29),
                    text: "Portfolio",
                    selected: portfoliobutton,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(5),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        homeworkbutton = false;
                        labrecordButton = false;

                        portfoliobutton = true;
                      });
                    }, fntsize: 12,
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
