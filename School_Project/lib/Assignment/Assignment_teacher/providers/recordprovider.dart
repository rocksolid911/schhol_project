import 'package:flutter/cupertino.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datareader.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';



class Recordprovider with ChangeNotifier{
  List<Assignment> _assignment ;
  List<Assignment> get assignment => _assignment;
  Future<List<Assignment>> assignmentType() async {
    //final String response = jclas().jsa();
    JsonDemo jsonDemo = await readjson();

     _assignment = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Draft")
        .toList();
    print("no of LabRecords : ${ _assignment.length}");
    return  _assignment;
  }
}