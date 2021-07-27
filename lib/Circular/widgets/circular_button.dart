
import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class CustomAnimatedButton extends StatefulWidget {
  //final String unselectedImagePath;
  //final String selectedImagePath;
  final String text;
  final VoidCallback onTap;
  final bool selected;
  //height of button
  final double height;
  //width of button
  final double width;
  //start color
  final int startcolor;
  //middle color
  final int midcolor;
  //end color
  final int endcolor;
  //button border radius
  final double radius;
  //active button font color
  Color activecolor;
  //inactive button color
  Color inactivecolor;

  CustomAnimatedButton({
    // this.unselectedImagePath,
    // this.selectedImagePath,
     this.text,
     this.selected,
     this.onTap,
     this.height,
     this.width,
     this.startcolor,
     this.midcolor,
     this.endcolor,
     this.radius,
     this.activecolor,
     this.inactivecolor,
  });

  @override
  State<StatefulWidget> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  bool pressAttention = false;
   AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    pressAttention = widget.selected;
    return Column(
      children: <Widget>[
        Container(
          height: widget.height,
          width: widget.width,
          child: Ink(
            decoration: pressAttention==true
                ? BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(widget.startcolor),
                  Color(widget.midcolor),
                  Color(widget.endcolor),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(widget.radius)),
            )
                : BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(widget.radius),
            ),
            width: _appConfig.rW(50),
            height: _appConfig.rH(50),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    side: BorderSide(
                      color: Color(0xFF7A17AF),
                    ),
                  ),
                ),
              ),
              //just to setisfy param requirment for text button
              onPressed: () {
                print('onpresswd tapped');
              },
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(
                        () {
                      pressAttention = !pressAttention;
                    },
                  );
                  widget.onTap();
                },
                child: Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        color: pressAttention==true
                            ? widget.activecolor
                            : widget.inactivecolor,
                        fontFamily: "Roboto",
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: 30.0),
        //   child: Text(
        //     widget.text,
        //     style: TextStyle(
        //         color: pressAttention
        //             ? Theme.of(context).accentColor
        //             : Colors.white,
        //         fontFamily: "Roboto",
        //         fontSize: 18.0),
        //   ),
        // )
      ],
    );
  }
}
