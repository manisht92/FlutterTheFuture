import 'package:flutter/material.dart';
import 'package:flutter_academind/products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ["Food Tester"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("Add Product"),
                  onPressed: () {
                    setState(() {
                      _products.add("Advance Food");
                    });
                  },
                )
              ],
            )),
        Products(_products)
      ],
    );
  }
}
