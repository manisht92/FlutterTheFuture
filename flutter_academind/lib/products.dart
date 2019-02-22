import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products.map((element) {
        return Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              Text(element),
              FlatButton(
                child: Text("Product Detail"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => ProductPage()),
                  );
                },
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
