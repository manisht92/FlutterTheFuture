import 'package:flutter/material.dart';
import 'package:flutter_pokemon/pokemon.dart';

void main() {
  runApp(PokeDetail());
}

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  _bodyWidget() => Stack(
        children: <Widget>[
          Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[Text(pokemon.name)],
              ),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("Poke Detail"),
      ),
      body: _bodyWidget(),
    );
  }
}
