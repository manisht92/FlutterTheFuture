import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_academind/ui/login.dart';
// import './products.dart';
// import './product_manager.dart';
import './pages/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled =true;
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness:  Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      color: Colors.greenAccent,
      title: "My App",
      home: HomePage(),
    );
  }
}
