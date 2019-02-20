import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String dynamicText;

  MyText(this.dynamicText);

  @override
  Widget build(BuildContext context) {
    return Text(
      dynamicText,
      style: TextStyle(fontSize: 20.0, color: Colors.red),
    );
  }
}
