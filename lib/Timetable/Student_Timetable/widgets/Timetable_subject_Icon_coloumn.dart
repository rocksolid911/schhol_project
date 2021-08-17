import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class TimeTbleIcon extends StatefulWidget {
  const TimeTbleIcon({Key key}) : super(key: key);

  @override
  _TimeTbleIconState createState() => _TimeTbleIconState();
}

class _TimeTbleIconState extends State<TimeTbleIcon> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Container(
      child: Column(
        // mainAxisAlignment = MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: _appConfig.rHP(4), bottom: 0),
            child: Container(
              //changed height of container
              width: _appConfig.rW(14),
              height: _appConfig.rH(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("#f55f5f")),
              child: Icon(
                Icons.format_list_bulleted_sharp,
                color: Colors.white,
              ),
            ),
          ),
          Text("Maths",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold)),
          Container(
            height: _appConfig.rH(8),
            child: VerticalDivider(
                thickness: 1,
                indent: 6,
                endIndent: 6,
                color: Colors.black26),
          ),
          // Padding(
          //   padding:
          //   EdgeInsets.only(top: _appConfig.rHP(4)),
          //   child: Container(
          //     width: _appConfig.rW(15),
          //     height: _appConfig.rH(10),
          //     child: Column(
          //       children: [
          //         Container(
          //           width: _appConfig.rW(14),
          //           height: _appConfig.rH(6.4),
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: HexColor("#188c60")),
          //           child: Icon(
          //             Icons.panorama_horizontal_select,
          //             color: Colors.white,
          //           ),
          //         ),
          //         Text("Physics",
          //             style: TextStyle(
          //                 fontSize: 10,
          //                 fontWeight: FontWeight.bold)),
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //     height: _appConfig.rH(8),
          //     child: VerticalDivider(
          //         thickness: 1,
          //         indent: 6,
          //         endIndent: 6,
          //         color: Colors.black26)),
          // Padding(
          //   padding: EdgeInsets.only(
          //       bottom: _appConfig.rHP(6),
          //       top: _appConfig.rHP(4)),
          //   child: Container(
          //     width: _appConfig.rW(15),
          //     height: _appConfig.rH(10),
          //     child: Column(
          //       children: [
          //         Container(
          //           width: _appConfig.rW(14),
          //           height: _appConfig.rH(6.4),
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: HexColor("#faa107")),
          //           child: Icon(
          //             Icons.checkroom_sharp,
          //             color: Colors.white,
          //           ),
          //         ),
          //         Text("Chemistry",
          //             style: TextStyle(
          //                 fontSize: 10,
          //                 fontWeight: FontWeight.bold)),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
