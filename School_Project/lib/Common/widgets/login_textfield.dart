import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class CustomTextField extends StatefulWidget {
  final String formtype;
  final String lebeltextemail;
  final String lebeltextphn;
  final String labeltextpasswd;
  final IconData icon;
  final ValueChanged<bool> emailvalid;
  final ValueChanged<bool> passwdvalid;
  CustomTextField(
      {Key key,
      this.formtype,
      this.lebeltextemail,
      this.lebeltextphn,
      this.labeltextpasswd,
      this.icon,
      this.emailvalid,
      this.passwdvalid})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  RegExp exp = new RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");

  GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return formfunction();
  }

  TextFormField emailTextFormField() => TextFormField(
        onEditingComplete: () {
          widget.emailvalid(true);
        },
        // onEditingComplete: (){
        //   bool val;
        //   val = _form.currentState.validate();
        //   print(val);
        //   widget.buttonChanged(val);
        // },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _form,
        // onEditingComplete: _validate,
        // key: _form,
        decoration: InputDecoration(
          // prefixIcon: Icon(
          //   Icons.chevron_left_outlined,
          //   color: Colors.white54,
          // ),
          prefixIcon: Icon(
            widget.icon,
            color: Colors.white54,
          ),
          // labelStyle: TextStyle(leadingDistribution: TextLeadingDistribution.even),
          labelText: "${widget.lebeltextemail}",
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
              // color: Colors.blueAccent,
              color: Colors.transparent,
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
          //fillColor: Colors.green
        ),

        validator: ValidationBuilder().email().maxLength(30).build(),
        // validator: (String value) {
        //   if (value.isNotEmpty ||
        //       RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        //           .hasMatch(value)) {
        //     setState(() {
        //       widget.buttonChanged(true);
        //     });
        //   }
        //   return 'Enter a valid email!';
        // },

        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        autofocus: false,
      );

  TextFormField phoneTextFormField() => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction, key: _form,
        // onEditingComplete: _validate,
        // key: _form,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: Colors.white54,
          ),
          // labelStyle: TextStyle(leadingDistribution: TextLeadingDistribution.even),
          labelText: "${widget.lebeltextphn}",
          labelStyle: TextStyle(color: Colors.white),
          errorStyle: TextStyle(color: Colors.white),
          fillColor: Colors.white30,
          filled: true,
          alignLabelWithHint: true,
          errorBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.red,
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
          //fillColor: Colors.green
        ),

        validator: ValidationBuilder()
            .phone(
              "enter valid phone no",
            )
            .maxLength(12)
            .build(),
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        autofocus: true,
      );

  TextFormField passwordFormField() => TextFormField(
        onEditingComplete: () {
          widget.passwdvalid(true);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction, key: _form,
        // onEditingComplete: _validate,
        // key: _form,
        decoration: InputDecoration(
          // prefixIcon: Icon(
          //   Icons.chevron_left_outlined,
          //   color: Colors.white54,
          // ),
          prefixIcon: Icon(
            widget.icon,
            color: Colors.white54,
          ),
          // labelStyle: TextStyle(leadingDistribution: TextLeadingDistribution.even),
          labelText: "${widget.labeltextpasswd}",
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
              // color: Colors.blueAccent,
              color: Colors.transparent,
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
          //fillColor: Colors.green
        ),

        validator: ValidationBuilder()
            .regExp(exp, "min 8 char, at least one letter and one number")
            .maxLength(30)
            .build(),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        autofocus: false,
      );

  TextFormField formfunction() {
    String value = widget.formtype;
    // if (value == "email") {
    //   return emailTextFormField();
    // } else if (value == "phoneNo") {
    //   return phoneTextFormField();
    // }
    switch (value) {
      case 'email':
        {
          return emailTextFormField();
        }
        break;
      case 'phoneNo':
        {
          return phoneTextFormField();
        }
        break;
      case 'passwd':
        {
          return passwordFormField();
        }
        break;
    }
  }
}
