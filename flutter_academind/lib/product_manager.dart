import 'package:flutter/material.dart';
import './products.dart';

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

  int i =1;

  void _addProduct(){
    _products.add("New Product $i");
    i++;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text("Add Product"),
            onPressed: () {
              setState(() {
                _addProduct();
              });
            },
          ),
        ),
        Products(_products)
      ],
    );
  }
}
