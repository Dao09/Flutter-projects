import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  )); //can add MaterialApp()
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<   HomePage> {
  var smText = "Change My Name";
  TextEditingController te = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("New App"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(children: <Widget>[
              Image.asset(
                "assets/xy.jpg",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                smText,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                    controller: te,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some text",
                        labelText: "Name")),
              )
            ]),
          ),
        ),
      )),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.all(0), children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("srs"),
          accountEmail: Text("srs@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1663825162561-8399b6907932?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("xyz"),
          subtitle: Text("pqr"),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("email"),
          subtitle: Text("pqr@gnmail.com"),
          trailing: Icon(Icons.email),
        )
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          smText = te.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
