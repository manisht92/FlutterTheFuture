import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: new FloatingActionButton(
        // shape: RoundedRectangleBorder(),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        elevation: 6.0,
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 6.0,
        shape: CircularNotchedRectangle(),
        child: Material(
          color: Theme.of(context).primaryColor,
          child: new SafeArea(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 90.0, 0.0),
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              indicatorWeight: 0.01,
              labelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                    icon: new Stack(
                  children: <Widget>[
                    new Icon(Icons.shopping_cart),
                    new Positioned(
                      top: 1.0,
                      right: 0.0,
                      child: new Stack(
                        children: <Widget>[
                          new Icon(Icons.brightness_1,
                              size: 14.0, color: Colors.green[800]),
                          new Positioned(
                            top: 1.0,
                            right: 4.0,
                            child: new Text("2",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    )
                  ],
                )),
                Tab(
                  icon: Icon(
                    Icons.show_chart,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
          )),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
