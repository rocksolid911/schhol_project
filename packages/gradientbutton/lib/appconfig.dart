import 'package:flutter/material.dart';

class AppConfig {
  BuildContext _context;
  late double _height;
  late double _width;
  late double _heightPadding;
  late double _widthPadding;

  AppConfig(this._context) {
    MediaQueryData _queryData = MediaQuery.of(_context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding =
        _height - ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double rH(double v) {
    return _height * v;
  }

  double rW(double v) {
    return _width * v;
  }

  double rHP(double v) {
    return _heightPadding * v;
  }

  double rWP(double v) {
    return _widthPadding * v;
  }
}
/************************************************/
// example
// import 'responsive_screen/app_config.dart';
// ...
// class RandomWordsState extends State<RandomWords> {
//   AppConfig _ac;
//   ...
//   @override
//   Widget build(BuildContext context) {
//     _ac = AppConfig(context);
//     ...
//     return Scaffold(
//     body: Container(
//     height: _ac.rHP(50),
//     width: _ac.rWP(50),
//     color: Colors.red,
//     child: Text('Test'),
//     ),
//     );
//     ...
//   }
//**************************************************//