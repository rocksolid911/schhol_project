import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/alljsondataprovider.dart';
import 'package:provider/provider.dart';

class RoundedTabAll extends StatefulWidget {
  final String type;
  final String term;
  final String stat="Draft";
  const RoundedTabAll({
    Key key,
    this.type,
    this.term,
    //this.stat,
  }) : super(key: key);

  @override
  State<RoundedTabAll> createState() => _RoundedTabAllState();
}

class _RoundedTabAllState extends State<RoundedTabAll> {
  List<AllAssJson> list;
  @override
  Widget build(BuildContext context) {
    AllAssProvider allAssProvider = Provider.of<AllAssProvider>(context);
    return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: widget.type, term: widget.term, stat: widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          }else{
            list = snapshot.data;
            print("value:$list");
          return Container(
            height: 70.0,
            child: new Tab(
              //text: 'hello'
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Text("${list.length}"),
                  ),
                  SizedBox(
                    // height: _appConfig.rH(1),
                    height: 8,
                  ),
                  Text(
                    "${widget.stat}",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        }});
  }
}
