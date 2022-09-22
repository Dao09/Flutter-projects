import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  )); //can add MaterialApp()
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New App"),
        ),
        body: Container(
          color: Colors.teal,
          width: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  //clipBehavior: Clip.antiAlias,
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  //clipBehavior: Clip.antiAlias,
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  //clipBehavior: Clip.antiAlias,
                  width: 100,
                  height: 100,
                  color: Colors.lightGreen,
                )
              ]),
        ));
  }
}
