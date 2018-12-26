import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Add Product"),
                    onPressed: () {},
                  )
                ],
              )),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/food.jpg"),
                Text("Food Paradise")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
