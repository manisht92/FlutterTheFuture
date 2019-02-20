import 'package:flutter/material.dart';
import './my_text.dart';

class MyTextcontrol extends StatefulWidget {
  final String _changetext;
  MyTextcontrol(this._changetext);
  @override
  State<StatefulWidget> createState() {
    return MyTextcontrolState();
  }
}

class MyTextcontrolState extends State<MyTextcontrol> {
  String startingText;
  @override
  void initState() {
    super.initState();
    startingText = widget._changetext;
  }

  void ChangeText() {
    setState(() {
      startingText = "Xyz";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(startingText),
        RaisedButton(
          child: Text("Submit"),
          onPressed: () {
            ChangeText();
          },
        )
      ],
    );
  }
}
