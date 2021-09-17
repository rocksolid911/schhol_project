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