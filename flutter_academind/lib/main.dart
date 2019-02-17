import 'package:flutter/material.dart';
// import 'package:flutter_academind/ui/login.dart';
// import './products.dart';
import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: (!_value) ? Brightness.light : Brightness.dark,
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      color: Colors.greenAccent,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: SwitchListTile(
                // activeTrackColor: Colors.purple,
                activeColor: Colors.white,
                value: _value,
                title: Text("Dark Mode"),
                onChanged: (bool val) {
                  setState(() {
                    _value = val;
                    // print("MTS");
                    // print(val);
                  });
                },
              ),
            ),
            ProductManager("First food"),
          ],
        ),
      ),
    );
  }
}
