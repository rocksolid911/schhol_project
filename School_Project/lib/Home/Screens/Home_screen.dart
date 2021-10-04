import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Auth/models/User.dart';
import 'package:phygitalz_project_1/Auth/models/Userprovider.dart';
import 'package:phygitalz_project_1/Auth/models/auth.dart';
import 'package:phygitalz_project_1/Auth/screens/login_screen.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';

import 'package:provider/provider.dart';

class HomeScreenStudent extends StatefulWidget {
  final User user;


  const HomeScreenStudent({Key key, this.user, }) : super(key: key);

  @override
  _HomeScreenStudentState createState() => _HomeScreenStudentState(user);
}

class _HomeScreenStudentState extends State<HomeScreenStudent> {
  _HomeScreenStudentState(this.user);
   User user;

  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();


  @override
  Widget build(BuildContext context) {
   // Provider.of<UserProvider>(context).setUser(user);
     user= Provider.of<UserProvider>(context).user;
    AuthProvider auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: _drawerkey,
      // endDrawer: myDrawer(),
      appBar: AppBar(
        title: Text("Home"),
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
      //body: HssBody(),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(child: Text("UserId:"+user.userId.toString())),
          Center(child: Text("emailId:"+user.emailId.toString())),
          Center(child: Text("name:"+user.name.toString())),
          Center(child: Text("msg:"+user.msg.toString())),
          Center(child: Text("method:"+user.method.toString())),
          //Center(child: Text(user.roleinfo[0].s40RoleName.toString())),

          SizedBox(height: 100),
          RaisedButton(onPressed: (){
            auth.logOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogIn()));

          }, child: Text("Logout"), color: Colors.lightBlueAccent,)
        ],
      ),
      drawer: myDrawer(),
      //assign pages index to bottomnav to show page accordingly in body
      bottomNavigationBar: mYBottomNav(),
    );
  }
}
