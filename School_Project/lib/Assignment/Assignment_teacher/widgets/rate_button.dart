import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class RateButton extends StatefulWidget {
  const RateButton({Key key}) : super(key: key);

  @override
  _RateButtonState createState() => _RateButtonState();
}

class _RateButtonState extends State<RateButton> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;
  bool selectedButton9A = false;
  bool selectedButton9B = false;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            //padding: EdgeInsets.zero,
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(28),
              text: "Excellent",
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              selected: selectedButton10B,
              onTap: (){
                setState(() {
                  selectedButton10B = true;
                  selectedButton10A = false;
                  selectedButton9B = false;
                  selectedButton9A = false;
                });
              }, fntsize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(28),
              text: "Very Good",
              selected: selectedButton10A,
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              onTap: (){
                setState(() {
                  selectedButton10B = false;
                  selectedButton10A = true;
                  selectedButton9B = false;
                  selectedButton9A = false;
                });
              }, fntsize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(19),
              text: "Good",
              selected: selectedButton9A,
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              onTap: (){
                setState(() {
                  selectedButton10B = false;
                  selectedButton10A = false;
                  selectedButton9B = false;
                  selectedButton9A = true;
                });
              }, fntsize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(19),
              text: "poor",
              selected: selectedButton9B,
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              onTap: (){
                setState(() {
                  selectedButton10B = false;
                  selectedButton10A = false;
                  selectedButton9B = true;
                  selectedButton9A = false;
                });
              }, fntsize: 12,
            ),
          ),
          // ButtonAnimated(),
          // ButtonAnimated(),
        ],
      );

  }
}
