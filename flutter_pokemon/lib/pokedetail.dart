import 'package:flutter/material.dart';
import 'package:flutter_pokemon/pokemon.dart';

void main() {
  runApp(PokeDetail());
}

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  _bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(pokemon.name,style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Height: ${pokemon.height}"),
                  Text("Weight: ${pokemon.weight}"),
                  Text("Types"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((t) => FilterChip(
                            label: Text(t),
                            backgroundColor: Colors.amber,
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text("Weakness"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses
                        .map((t) => FilterChip(
                            label: Text(
                              t,
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.red,
                            onSelected: (b) {}))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: pokemon.img,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(pokemon.img), fit: BoxFit.cover)),
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
      body: _bodyWidget(context),
    );
  }
}
