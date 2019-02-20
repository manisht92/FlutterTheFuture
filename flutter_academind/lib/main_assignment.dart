import 'package:flutter/material.dart';
import './my_textcontrol.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Assignment",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: MyTextcontrol("Initial Text"),
          ),
        ),
      ),
    );
  }
}
