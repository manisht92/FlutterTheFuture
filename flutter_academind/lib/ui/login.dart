import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginUI();
  }
}

class LoginUI extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  String welcome = "None";

  void erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void ShowLogin() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        welcome = _userController.text.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/face.png",
              height: 90,
              width: 90,
              color: Colors.green,
              alignment: Alignment.center,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 180.0,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                        hintText: "Username", icon: Icon(Icons.person)),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: "Password", icon: Icon(Icons.lock)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 38),
                          child: RaisedButton(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.red.shade300,
                            onPressed: ShowLogin,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 140),
                          child: RaisedButton(
                            child: Text(
                              "Clear",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.red.shade300,
                            onPressed: erase,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Welcome, $welcome",
                    style: TextStyle(color: Colors.white, fontSize: 21.0)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
