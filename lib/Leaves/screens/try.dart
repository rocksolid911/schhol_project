import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Try extends StatefulWidget {
  const Try({Key key}) : super(key: key);

  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.transparent,
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(40.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                    Colors.deepOrangeAccent,
                    Colors.pink,
                    Colors.pinkAccent,
                    Colors.purple,
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: const Text('myname', style: TextStyle(fontSize: 12)),
            ),
          ),
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
        ],
      ),
    );
  }
}
