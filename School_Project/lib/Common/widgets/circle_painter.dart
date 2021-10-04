// import 'dart:ui' as ui;
//
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
//
// //Add this CustomPaint widget to the Widget Tree
//
//
// //Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.9160962,size.height*8.204723);
//     path_0.lineTo(size.width*1.342581,size.height*8.204723);
//     path_0.lineTo(size.width*1.129494,size.height*8.381157);
//     path_0.close();
//     path_0.moveTo(size.width*0.9148605,size.height*8.163790);
//     path_0.lineTo(size.width*0.9148605,size.height*7.778636);
//     path_0.cubicTo(size.width*0.9136188,size.height*7.765756,size.width*0.9061660,size.height*7.651453,size.width*1.011632,size.height*7.590796);
//     path_0.lineTo(size.width*1.079869,size.height*7.626668);
//     path_0.cubicTo(size.width*1.016905,size.height*7.665474,size.width*1.009464,size.height*7.746521,size.width*1.011936,size.height*7.777337);
//     path_0.lineTo(size.width*1.011936,size.height*8.118798);
//     path_0.lineTo(size.width*1.085137,size.height*8.118798);
//     path_0.lineTo(size.width*1.085137,size.height*7.778636);
//     path_0.cubicTo(size.width*1.084842,size.height*7.777014,size.width*1.074593,size.height*7.709174,size.width*1.133838,size.height*7.655205);
//     path_0.lineTo(size.width*1.206095,size.height*7.693192);
//     path_0.cubicTo(size.width*1.175717,size.height*7.730856,size.width*1.182206,size.height*7.776023,size.width*1.182206,size.height*7.776518);
//     path_0.lineTo(size.width*1.182206,size.height*8.118798);
//     path_0.lineTo(size.width*1.247034,size.height*8.118798);
//     path_0.lineTo(size.width*1.247034,size.height*7.714720);
//     path_0.lineTo(size.width*1.344130,size.height*7.765753);
//     path_0.lineTo(size.width*1.344130,size.height*8.163793);
//     path_0.close();
//     path_0.moveTo(size.width*1.441220,size.height*7.951968);
//     path_0.cubicTo(size.width*1.649034,size.height*7.945445,size.width*1.814040,size.height*7.854287,size.width*1.814040,size.height*7.743738);
//     path_0.arcToPoint(Offset(size.width*1.728431,size.height*7.614761),radius: Radius.elliptical(size.width*0.3927631, size.height*0.2064826),rotation: 0 ,largeArc: false,clockwise: false);
//     path_0.lineTo(size.width*1.797603,size.height*7.578396);
//     path_0.arcToPoint(Offset(size.width*1.911127,size.height*7.743736),radius: Radius.elliptical(size.width*0.4911655, size.height*0.2582145),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.cubicTo(size.width*1.911127,size.height*7.882673,size.width*1.702374,size.height*7.996490,size.width*1.441217,size.height*8.003337);
//     path_0.close();
//     path_0.moveTo(size.width*1.441220,size.height*7.855273);
//     path_0.cubicTo(size.width*1.547918,size.height*7.848750,size.width*1.631035,size.height*7.801298,size.width*1.631035,size.height*7.743733);
//     path_0.arcToPoint(Offset(size.width*1.597846,size.height*7.683404),radius: Radius.elliptical(size.width*0.2132528, size.height*0.1121108),rotation: 0 ,largeArc: false,clockwise: false);
//     path_0.lineTo(size.width*1.667019,size.height*7.647042);
//     path_0.arcToPoint(Offset(size.width*1.727818,size.height*7.743733),radius: Radius.elliptical(size.width*0.3051226, size.height*0.1604084),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.cubicTo(size.width*1.727818,size.height*7.829341,size.width*1.601259,size.height*7.900112,size.width*1.441220,size.height*7.906307);
//     path_0.close();
//     path_0.moveTo(size.width*1.441220,size.height*7.765750);
//     path_0.lineTo(size.width*1.545751,size.height*7.710798);
//     path_0.arcToPoint(Offset(size.width*1.560323,size.height*7.743739),radius: Radius.elliptical(size.width*0.1410813, size.height*0.07416894),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.arcToPoint(Offset(size.width*1.441223,size.height*7.817933),radius: Radius.elliptical(size.width*0.1427830, size.height*0.07506357),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.close();
//     path_0.moveTo(size.width*1.334521,size.height*7.688618);
//     path_0.lineTo(size.width*1.327696,size.height*7.685033);
//     path_0.arcToPoint(Offset(size.width*1.417027,size.height*7.668400),radius: Radius.elliptical(size.width*0.1418776, size.height*0.07458757),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.arcToPoint(Offset(size.width*1.476578,size.height*7.675088),radius: Radius.elliptical(size.width*0.1463575, size.height*0.07694276),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.lineTo(size.width*1.392819,size.height*7.719110);
//     path_0.close();
//     path_0.moveTo(size.width*1.209201,size.height*7.622756);
//     path_0.arcToPoint(Offset(size.width*1.417015,size.height*7.580517),radius: Radius.elliptical(size.width*0.3075734, size.height*0.1616968),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.arcToPoint(Offset(size.width*1.598159,size.height*7.611013),radius: Radius.elliptical(size.width*0.3141179, size.height*0.1651374),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.lineTo(size.width*1.528061,size.height*7.648031);
//     path_0.arcToPoint(Offset(size.width*1.278051,size.height*7.658791),radius: Radius.elliptical(size.width*0.2123474, size.height*0.1116348),rotation: 0 ,largeArc: false,clockwise: false);
//     path_0.close();
//     path_0.moveTo(size.width*1.079559,size.height*7.554267);
//     path_0.arcToPoint(Offset(size.width*1.728431,size.height*7.542688),radius: Radius.elliptical(size.width*0.4914810, size.height*0.2583804),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.lineTo(size.width*1.659578,size.height*7.578890);
//     path_0.arcToPoint(Offset(size.width*1.147794,size.height*7.590471),radius: Radius.elliptical(size.width*0.3954027, size.height*0.2078703),rotation: 0 ,largeArc: false,clockwise: false);
//     path_0.close();
//     path_0.moveTo(size.width*0.9458662,size.height*7.480072);
//     path_0.arcToPoint(Offset(size.width*1.860570,size.height*7.470939),radius: Radius.elliptical(size.width*0.6849059, size.height*0.3600673),rotation: 0 ,largeArc: false,clockwise: true);
//     path_0.lineTo(size.width*1.802889,size.height*7.506000);
//     path_0.arcToPoint(Offset(size.width*1.005754,size.height*7.513990),radius: Radius.elliptical(size.width*0.5967434, size.height*0.3137187),rotation: 0 ,largeArc: false,clockwise: false);
//     path_0.close();
//
//     // Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.002949270;
//     // paint_0_stroke.color=Color(0xFF7D1010).withOpacity(1);
//     // canvas.drawPath(path_0,paint_0_stroke);
//
//     Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
//     paint_0_fill.color = Color(0xffacacac).withOpacity(1);
//     canvas.drawPath(path_0,paint_0_fill);
//
//   }
//
//   @override
//   bool shouldRepaint( CustomPainter oldDelegate) {
//     return true;
//   }
// }
////////////////////////////////////////******************??????????//////////////////////
import 'dart:ui' as ui;

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(310.618,5291.718);
    path_0.lineTo(455.225,5291.718);
    path_0.lineTo(382.97400000000005,5405.5109999999995);
    path_0.close();
    path_0.moveTo(310.199,5265.318);
    path_0.lineTo(310.199,5016.909);
    path_0.cubicTo(309.778,5008.602,307.25100000000003,4934.880999999999,343.011,4895.759999999999);
    path_0.lineTo(366.148,4918.896);
    path_0.cubicTo(344.79900000000004,4943.924,342.276,4996.196,343.11400000000003,5016.071);
    path_0.lineTo(343.11400000000003,5236.3);
    path_0.lineTo(367.934,5236.3);
    path_0.lineTo(367.934,5016.909);
    path_0.cubicTo(367.834,5015.862999999999,364.35900000000004,4972.1089999999995,384.447,4937.3009999999995);
    path_0.lineTo(408.947,4961.8009999999995);
    path_0.cubicTo(398.647,4986.093,400.847,5015.223999999999,400.847,5015.543);
    path_0.lineTo(400.847,5236.3);
    path_0.lineTo(422.828,5236.3);
    path_0.lineTo(422.828,4975.686);
    path_0.lineTo(455.75,5008.6);
    path_0.lineTo(455.75,5265.320000000001);
    path_0.close();
    path_0.moveTo(488.67,5128.701);
    path_0.cubicTo(559.133,5124.494,615.081,5065.701,615.081,4994.401);
    path_0.arcToPoint(Offset(586.054,4911.215999999999),radius: Radius.elliptical(133.173, 133.173),rotation: 0 ,largeArc: false,clockwise: false);
    path_0.lineTo(609.5079999999999,4887.762);
    path_0.arcToPoint(Offset(648,4994.4),radius: Radius.elliptical(166.538, 166.538),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.cubicTo(648,5084.009,577.219,5157.415999999999,488.669,5161.831999999999);
    path_0.close();
    path_0.moveTo(488.67,5066.337);
    path_0.cubicTo(524.848,5062.13,553.03,5031.525000000001,553.03,4994.398);
    path_0.arcToPoint(Offset(541.7769999999999,4955.488),radius: Radius.elliptical(72.307, 72.307),rotation: 0 ,largeArc: false,clockwise: false);
    path_0.lineTo(565.2309999999999,4932.036);
    path_0.arcToPoint(Offset(585.8459999999999,4994.398),radius: Radius.elliptical(103.457, 103.457),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.cubicTo(585.8459999999999,5049.612,542.9339999999999,5095.256,488.6699999999999,5099.252);
    path_0.close();
    path_0.moveTo(488.67,5008.598000000001);
    path_0.lineTo(524.113,4973.156000000001);
    path_0.arcToPoint(Offset(529.0540000000001,4994.402000000001),radius: Radius.elliptical(47.836, 47.836),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.arcToPoint(Offset(488.6710000000001,5042.254000000001),radius: Radius.elliptical(48.413, 48.413),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.close();
    path_0.moveTo(452.492,4958.851000000001);
    path_0.lineTo(450.178,4956.539000000001);
    path_0.arcToPoint(Offset(480.467,4945.811000000001),radius: Radius.elliptical(48.106, 48.106),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.arcToPoint(Offset(500.659,4950.125000000001),radius: Radius.elliptical(49.625, 49.625),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(472.259,4978.517000000001);
    path_0.close();
    path_0.moveTo(410,4916.373);
    path_0.arcToPoint(Offset(480.46299999999997,4889.129999999999),radius: Radius.elliptical(104.288, 104.288),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.arcToPoint(Offset(541.8829999999999,4908.798999999999),radius: Radius.elliptical(106.507, 106.507),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(518.1149999999999,4932.673999999999);
    path_0.arcToPoint(Offset(433.3449999999999,4939.613999999999),radius: Radius.elliptical(72, 72),rotation: 0 ,largeArc: false,clockwise: false);
    path_0.close();
    path_0.moveTo(366.043,4872.2);
    path_0.arcToPoint(Offset(586.054,4864.732),radius: Radius.elliptical(166.645, 166.645),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(562.708,4888.081);
    path_0.arcToPoint(Offset(389.179,4895.55),radius: Radius.elliptical(134.068, 134.068),rotation: 0 ,largeArc: false,clockwise: false);
    path_0.close();
    path_0.moveTo(320.712,4824.347);
    path_0.arcToPoint(Offset(630.858,4818.456999999999),radius: Radius.elliptical(232.229, 232.229),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(611.3,4841.07);
    path_0.arcToPoint(Offset(341.018,4846.223),radius: Radius.elliptical(202.336, 202.336),rotation: 0 ,largeArc: false,clockwise: false);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.002949270;
    paint_0_stroke.color=Color.fromRGBO(0,0,0,0).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_stroke);

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffacacac).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}