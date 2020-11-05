import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 33) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: _incrementCounter, child: Text('+')),
                        Text('$_counter'),
                        RaisedButton(
                            onPressed: _decrementCounter, child: Text('-')),
                      ]),
                ),
                Container(
                    child: Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: List.generate(_counter, (index) {
                      if ((index + 1) % 15 == 0 && (index + 1) > 0) {
                        return Container(
                          child: Text('FACEBOOK'),
                          color: Colors.green,
                        );
                      } else if ((index + 1) % 5 == 0 && (index + 1) > 0) {
                        return Container(
                          child: Text('BOOK'),
                          color: Colors.yellow,
                        );
                      } else if ((index + 1) % 3 == 0 && (index + 1) > 0) {
                        return Container(
                            child: Text('FACE'), color: Colors.blue);
                      } else {
                        return Container(
                          child: Text('----'),
                          color: Colors.grey,
                        );
                      }
                    }),
                  ),
                ))
              ],
            )),
      ),
    );
  }
}
