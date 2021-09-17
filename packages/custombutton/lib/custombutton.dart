library custombutton;

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double bdrRadius;
  final String text;
  //start color
  final int startcolor;
  //middle color
  final int midcolor;
  //end color
  final int endcolor;
  final VoidCallback onTap;
  final bool selected;
  //active button font color
  final Color activecolor;
  //inactive button color
  final Color inactivecolor;

  CustomButton({
     this.bdrRadius,
     this.text,
     this.startcolor,
     this.midcolor,
     this.endcolor,
     this.onTap,
     this.selected,
     this.activecolor,
     this.inactivecolor,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    pressAttention = widget.selected;
    return SizedBox(
      height: 28,
      child: RaisedButton(
        onPressed: () {
          // setState(
          //   () {
          //     print(pressAttention);
          //     pressAttention = !pressAttention;
          //     print(pressAttention);
          //   },
          // );
          // widget.onTap();
        },
        textColor: Colors.white,
        color: Colors.transparent,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(widget.bdrRadius),
          side: BorderSide(
            color: Color(0xFF7A17AF),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(
                  () {
                pressAttention = !pressAttention;
              },
            );
            widget.onTap();
          },
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(widget.bdrRadius),
            //   gradient: pressAttention
            //       ? LinearGradient(
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.topRight,
            //           colors: <Color>[
            //             Color(widget.startcolor),
            //             Color(widget.midcolor),
            //             Color(widget.endcolor),
            //           ],
            //         )
            //       : LinearGradient(
            //           colors: [Colors.white, Colors.white],
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.topRight,
            //         ),
            // ),
            //padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),//initial padding
            decoration: pressAttention
                ? BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(widget.startcolor),
                  Color(widget.midcolor),
                  Color(widget.endcolor),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(widget.bdrRadius),
            )
                : BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(widget.bdrRadius),
            ),
            padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 10,
                color: pressAttention ? widget.activecolor : widget.inactivecolor,
                fontFamily: "Barlow",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
