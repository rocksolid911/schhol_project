

import 'package:flutter/material.dart';


import 'buttons_common.dart';
import 'conducted_cards.dart';

class ConductedView extends StatefulWidget {
  const ConductedView({Key key}) : super(key: key);

  @override
  _ConductedViewState createState() => _ConductedViewState();
}

class _ConductedViewState extends State<ConductedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ConductedCard(),
      ),
    );
  }
}
