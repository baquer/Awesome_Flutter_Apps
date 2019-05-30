import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG_Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Baground Changer'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var colors = [
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.yellow,
    Colors.orange,
    Colors.green
  ];
  var defaultColor = Colors.white;

  setRandomColor() {
    var rnd = Random().nextInt(7);
    setState(() {
      defaultColor = colors[rnd];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Change It!'),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}