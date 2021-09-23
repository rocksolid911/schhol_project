import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class SubjectIcon extends StatelessWidget {
  const SubjectIcon({
    Key key,
    @required AppConfig appConfig,
    this.subject,
  })  : _appConfig = appConfig,
        super(key: key);

  final AppConfig _appConfig;
  final String subject;
  @override
  Widget build(BuildContext context) {
    switch (subject) {
      case ("Computer Science"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_ComputerScience.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
        break;
      case ("Mathematics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Maths.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
      case ("Tamil"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Tamil.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
        break;
      case ("physics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Physics.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
        break;
      case ("Biology"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Biology.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
        break;
      case ("Chemistry"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Chemistry.svg",
          height: _appConfig.rH(5),
          width: _appConfig.rW(5),
        );
        break;
      
      default:
        return CircleAvatar(radius: 15,backgroundColor: Colors.teal,);
    }
  }
}
