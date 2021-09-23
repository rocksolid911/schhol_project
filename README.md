# phygitalz_project_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
//types of button using different packages
DecoratedBox(
decoration: BoxDecoration(
gradient: LinearGradient(colors: [Colors.cyanAccent, Colors.red]),
borderRadius: new BorderRadius.circular(60.0),
),
child: ElevatedButton(
onPressed: () {},
child: Text('Elevated Button'),
style: ElevatedButton.styleFrom(
primary: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: new BorderRadius.circular(40.0),
),
),
),
),
CircularGradientButton(
child: Icon(Icons.gradient),
callback: () {},
gradient: Gradients.rainbowBlue,
shadowColor: Gradients.rainbowBlue.colors.last.withOpacity(0.5),
),
GradientButton(
child: Text('Home',style: TextStyle(fontSize: 12),),
increaseHeightBy: 4,
increaseWidthBy: 4,
callback: () {},
//gradient: Gradients.backToFuture,
gradient: LinearGradient(
colors: <Color>[
Colors.deepOrangeAccent,
Colors.pink,
Colors.pinkAccent,
Colors.purple,
],
),
shadowColor: Gradients.backToFuture.colors.last.withOpacity(0.25),
),
GradientButton(
child: Text('Labrecord',style: TextStyle(fontSize: 12),),
callback: () {},
//gradient: Gradients.backToFuture,
gradient: LinearGradient(
colors: <Color>[
Colors.deepOrangeAccent,
Colors.pink,
Colors.pinkAccent,
Colors.purple,
],
),
shadowColor: Gradients.backToFuture.colors.last.withOpacity(0.25),
),
//*
Scaffold(
appBar: AppBar(
// title: Text("Student Review"),
bottom: TabBar(
//isScrollable: true,
indicatorSize: TabBarIndicatorSize.label,
indicatorWeight: 4,
labelPadding: EdgeInsets.only(bottom: 8),
indicator: UnderlineTabIndicator(
borderSide: BorderSide(color: Colors.white),
insets: EdgeInsets.only(bottom: 8)),
tabs: [
Tab(
child: Column(
children: [
Text(
"03",
style: TextStyle(color: Colors.white),
),
SizedBox(
height: _appConfig.rH(1),
),
Text(
"Draft",
style: TextStyle(color: Colors.white, fontSize: 10),
),
],
),
),
Tab(
child: Column(
children: [
Text(
"03",
style: TextStyle(color: Colors.white),
),
SizedBox(
height: _appConfig.rH(1),
),
Text(
"Draft",
style: TextStyle(color: Colors.white, fontSize: 10),
),
],
),
),
Tab(
child: Column(
children: [
Text(
"03",
style: TextStyle(color: Colors.white),
),
SizedBox(
height: _appConfig.rH(1),
),
Text(
"Draft",
style: TextStyle(color: Colors.white, fontSize: 10),
),
],
),
),
Tab(
child: Column(
children: [
Text(
"03",
style: TextStyle(color: Colors.white),
),
SizedBox(
height: _appConfig.rH(1),
),
Text(
"Draft",
style: TextStyle(color: Colors.white, fontSize: 10),
),
],
),
),
],
controller: controller,
),
centerTitle: true,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ), //this section help to cut the bottom area
        // backgroundColor: Colors.pink,
        automaticallyImplyLeading: true,
        // flexibleSpace: ClipRRect(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(30),
        //   ),
        //   child: Column(
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //             begin: Alignment.bottomLeft,
        //             end: Alignment.topRight,
        //             colors: [
        //               Color(0xFFFF8080),
        //               Color(0xFFFF1AFF),
        //               Color(0xFFCC00CC),
        //             ],
        //           ),
        //         ),
        //       ),
        //       TabBar(
        //         //isScrollable: true,
        //         indicatorSize: TabBarIndicatorSize.label,
        //         indicatorWeight: 4,
        //         labelPadding: EdgeInsets.only(bottom: 8),
        //         indicator: UnderlineTabIndicator(
        //             borderSide: BorderSide(color: Colors.white),
        //             insets: EdgeInsets.only(bottom: 8)),
        //         tabs: [
        //           Tab(
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "03",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 SizedBox(
        //                   height: _appConfig.rH(1),
        //                 ),
        //                 Text(
        //                   "Draft",
        //                   style: TextStyle(color: Colors.white, fontSize: 10),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Tab(
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "03",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 SizedBox(
        //                   height: _appConfig.rH(1),
        //                 ),
        //                 Text(
        //                   "Draft",
        //                   style: TextStyle(color: Colors.white, fontSize: 10),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Tab(
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "03",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 SizedBox(
        //                   height: _appConfig.rH(1),
        //                 ),
        //                 Text(
        //                   "Draft",
        //                   style: TextStyle(color: Colors.white, fontSize: 10),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Tab(
        //             child: Column(
        //               children: [
        //                 Text(
        //                   "03",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 SizedBox(
        //                   height: _appConfig.rH(1),
        //                 ),
        //                 Text(
        //                   "Draft",
        //                   style: TextStyle(color: Colors.white, fontSize: 10),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //         controller: controller,
        //       ),
        //     ],
        //   ),
        // ),
        flexibleSpace: FlexibleSpaceBar(
         // title: Text("student"),
          background: Container(
            color: Colors.teal,
            child: Column(children: [
              Text("hjhkjhk"),
            ],),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Search Circular',
            onPressed: () {
              // handle the press
            },
          ),
        ], //to add gradient color to app bar
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Center(child: Text("Tab one")),
          Center(child: Text("Tab two")),
          Center(child: Text("Tab three")),
          Center(child: Text("Tab four")),
        ],
      ),
    );
*//