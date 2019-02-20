import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() => ProductManagerState();
}

class ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  int i = 1;

  void _addProduct() {
    setState(() {
      _products.add("New Product $i");
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
