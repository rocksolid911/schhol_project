import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/screens/assignment_teacher_main.dart';
import 'package:phygitalz_project_1/Home/Screens/Home_screen.dart';
import 'package:phygitalz_project_1/Leaves/screens/try.dart';
import 'package:phygitalz_project_1/Timetable/Taecher_Timetable/screens/PAS_S40_Teacher_1_TimeTable.dart';
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
      child: BottomAppBar(
        elevation: 20,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        child: BottomNavigationBar(
          //fixedColor: Colors.white,
          //elevation: 0.0,

          items: _item,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  // int currentTab = 0; // to keep track of active tab index
  // final List<Widget> screens = [
  //   TimetableTeacherScreen(),
  //   AssignmentTeacherMain(),
  //   Try(),
  //   HomeScreenStudent(),
  // ]; // to store nested tabs
  // final PageStorageBucket bucket = PageStorageBucket();
  // Widget currentScreen = HomeScreenStudent(); // Our first view in viewport
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: PageStorage(
  //       child: currentScreen,
  //       bucket: bucket,
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       child: Icon(Icons.add),
  //       onPressed: () {},
  //     ),
  //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //     bottomNavigationBar: BottomAppBar(
  //       shape: CircularNotchedRectangle(),
  //       notchMargin: 10,
  //       child: Container(
  //         height: 60,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 MaterialButton(
  //                   minWidth: 40,
  //                   onPressed: () {
  //                     setState(() {
  //                       currentScreen =
  //                           HomeScreenStudent(); // if user taps on this dashboard tab will be active
  //                       currentTab = 0;
  //                     });
  //                   },
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.dashboard,
  //                         color: currentTab == 0 ? Colors.blue : Colors.grey,
  //                       ),
  //                       Text(
  //                         'Dashboard',
  //                         style: TextStyle(
  //                           color: currentTab == 0 ? Colors.blue : Colors.grey,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 MaterialButton(
  //                   minWidth: 40,
  //                   onPressed: () {
  //                     setState(() {
  //                       currentScreen =
  //                           TimetableTeacherScreen(); // if user taps on this dashboard tab will be active
  //                       currentTab = 1;
  //                     });
  //                   },
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.chat,
  //                         color: currentTab == 1 ? Colors.blue : Colors.grey,
  //                       ),
  //                       Text(
  //                         'Chats',
  //                         style: TextStyle(
  //                           color: currentTab == 1 ? Colors.blue : Colors.grey,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //
  //             // Right Tab bar icons
  //
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 MaterialButton(
  //                   minWidth: 40,
  //                   onPressed: () {
  //                     setState(() {
  //                       currentScreen =
  //                           AssignmentTeacherMain(); // if user taps on this dashboard tab will be active
  //                       currentTab = 2;
  //                     });
  //                   },
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.dashboard,
  //                         color: currentTab == 2 ? Colors.blue : Colors.grey,
  //                       ),
  //                       Text(
  //                         'Profile',
  //                         style: TextStyle(
  //                           color: currentTab == 2 ? Colors.blue : Colors.grey,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 MaterialButton(
  //                   minWidth: 40,
  //                   onPressed: () {
  //                     setState(() {
  //                       currentScreen =
  //                           Try(); // if user taps on this dashboard tab will be active
  //                       currentTab = 3;
  //                     });
  //                   },
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.chat,
  //                         color: currentTab == 3 ? Colors.blue : Colors.grey,
  //                       ),
  //                       Text(
  //                         'Settings',
  //                         style: TextStyle(
  //                           color: currentTab == 3 ? Colors.blue : Colors.grey,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             )
  //
  //           ],
  //         ),
  //       ),
  //     ),
  //   );

}
