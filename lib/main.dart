import 'dart:indexed_db';

import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Roshan's Portfolio"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.greenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    "About",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.yellowAccent,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    "Contact",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.blueAccent,
              ),
            ],
          )
        ],
      ),
      body: GridView.count(
        // horizontal, this produces 2 rows.
        crossAxisCount: 6,

        children: List.generate(100, (index) {
          return InkWell(
            splashColor: Colors.indigo,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Center(
                child: Text(
                  '$index',
                  // style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
