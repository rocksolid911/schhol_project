import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:phygitalz_project_1/views/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/views/widgets/circular_listview_builder.dart';
import 'package:phygitalz_project_1/views/widgets/drawer.dart';
class CircularView extends StatefulWidget {
  const CircularView({Key key}) : super(key: key);

  @override
  _CircularViewState createState() => _CircularViewState();
}

class _CircularViewState extends State<CircularView> {

    AppConfig _appConfig;
   // final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
    final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
    @override
    Widget build(BuildContext context) {
      _appConfig = AppConfig(context);
      return Scaffold(
        key: _drawerkey,
       // endDrawer: myDrawer(),
        appBar: AppBar(
          title: Text("Circular"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ), //this section help to cut the bottom area
          // backgroundColor: Colors.pink,
          leading: InkWell(
            child: Icon(Icons.sort),
            onTap: () {
              _drawerkey.currentState.openDrawer();
            },
          ),
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFFFF8080),
                    Color(0xFFFF1AFF),
                    Color(0xFFCC00CC),
                  ],
                ),
              ),
            ),
          ),
          actions: [IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Search Circular',
            onPressed: () {
              // handle the press
            },
          ),], //to add gradient color to app bar
        ),
        body: InterFace(),
        drawer: myDrawer(),
        //assign pages index to bottomnav to show page accordingly in body
        bottomNavigationBar: mYBottomNav(),
      );
    }


}

