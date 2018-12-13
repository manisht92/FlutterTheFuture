import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text("Add Product"),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/food.jpg"),
                Text("Food Paradise"),
              ],
            ),
          ),
        ]),
        drawer: ListTile(
          leading: Icon(Icons.change_history),
          title: Text("First Menu"),
        ),
      ),
    );
  }
}
