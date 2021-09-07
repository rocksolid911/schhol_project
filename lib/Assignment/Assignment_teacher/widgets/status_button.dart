import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({Key key}) : super(key: key);

  @override
  _ButtonsWidgetState createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            //padding: EdgeInsets.zero,
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(28),
              text: "Accepted",
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

                });
              }, fntsize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAnimatedButton(
              height: _appConfig.rH(4.5),
              width: _appConfig.rW(28),
              text: "Rejected",
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
