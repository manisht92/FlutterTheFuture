import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MakeItRain();
  }
}

class MakeItRain extends State<Home> {
  int _moneyCounter = 0;
  void _rainMoney() {
    setState(() {
      _moneyCounter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Make It Rain"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Get Rich!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                      fontSize: 28,
                      color: _moneyCounter<10000?Colors.green.shade300:Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  color: Colors.green,
                  child: Text(
                    "Make It Rain",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.all(20),
                  onPressed: _rainMoney,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
