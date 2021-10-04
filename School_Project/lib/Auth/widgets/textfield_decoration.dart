import 'package:flutter/material.dart';




MaterialButton longButtons(String title, Function fun,
    {Color color: const Color(0xffffffff), Color textColor: Colors.pinkAccent}) {
  return MaterialButton(
    onPressed: fun,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: 200,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
      ),
    ),
    height: 45,
    //minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
  );
}

label(String title) => Text(title);

InputDecoration buildInputDecoration(String hintText, IconData icon,String labeltext) {
  return InputDecoration(
    prefixIcon: Icon(icon, color: Colors.white),
    // hintText: hintText,
    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    labelText: labeltext,
      labelStyle: TextStyle(color: Colors.white),
  errorStyle: TextStyle(color: Colors.white),
  filled: true,
  fillColor: Colors.white30,
  alignLabelWithHint: true,
  errorBorder: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
  color: Colors.transparent,
  ),
  ),
  enabledBorder: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
   color: Colors.blueAccent,
  //color: Colors.transparent,
  ),
  ),

  focusedBorder: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
  //color: Colors.blueAccent,
  color: Colors.transparent,
  ),
  ),
  disabledBorder: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
  // color: Colors.blueAccent,
  color: Colors.transparent,
  ),
  ),
  border: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
  // color: Colors.blueAccent
  color: Colors.transparent,
  ),
  ),
  focusedErrorBorder: OutlineInputBorder(
  gapPadding: 3,
  borderRadius: BorderRadius.circular(60.0),
  borderSide: BorderSide(
  color: Colors.red,
  ),
  ),
  );
}