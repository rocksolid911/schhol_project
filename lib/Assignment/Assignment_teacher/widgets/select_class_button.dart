import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class SectionButton extends StatefulWidget {
  const SectionButton({Key key}) : super(key: key);

  @override
  _SectionButtonState createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //padding: EdgeInsets.zero,
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(4.5),
                    width: _appConfig.rW(15.5),
                    text: "10A",
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(4.5),
                    width: _appConfig.rW(15.5),
                    text: "10B",
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
                Padding(
                  padding:  EdgeInsets.all( 8.0),
                  child: CustomAnimatedButton(
                    height: _appConfig.rH(4.5),
                    width: _appConfig.rW(15.5),
                    text: "9A",
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
