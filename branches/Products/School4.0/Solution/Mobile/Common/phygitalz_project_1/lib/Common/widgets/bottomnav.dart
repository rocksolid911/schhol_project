import 'package:flutter/material.dart';
//import 'package:phygitalz_standard/ui/card1.dart';
class mYBottomNav extends StatefulWidget {
  const mYBottomNav({Key key}) : super(key: key);

  @override
  _mYBottomNavState createState() => _mYBottomNavState();
}

class _mYBottomNavState extends State<mYBottomNav> {
  int selectedIndex = 0;
  //pages to show when specific index assinged
  // List<Widget> _pages = <Widget>[
  //   CardOne(),
  // ];
  List<BottomNavigationBarItem> _item = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
        size: 30,
        //color: Colors.black,
      ),
      title: Text(
        "HOME",
        //style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite,
        // color: Colors.pinkAccent,
        size: 30,
      ),
      title: Text('Favorite'),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.verified_user,
        // color: Colors.pinkAccent,
        size: 30,
      ),
      title: Text('User'),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.list,
        // color: Colors.pinkAccent,
        size: 30,
      ),
      title: Text('list'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        //elevation: 0.0,
        items: _item,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF3E4E9),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

