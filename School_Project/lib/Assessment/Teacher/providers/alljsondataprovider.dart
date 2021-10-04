import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/alljsonreader.dart';

class AllAssProvider with ChangeNotifier{

  Future<List<AllAssJson>> getAllJson()async{
    List<AllAssJson>list1 = await readAllAssJson();
    return list1;
  }
  Future<List<AllAssJson>> getByTypeTerm({String type,String term,String stat}) async {
    List<AllAssJson>newlist;
    List<AllAssJson>list;
    list= await readAllAssJson();
    print("value of:$list");
   newlist = list.where((e) => e.s40Type==type && e.s40Term == term && e.s40Status == stat).toList();
    return newlist;
  }
}