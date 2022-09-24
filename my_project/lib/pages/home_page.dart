import 'package:flutter/material.dart';
import '../drawer.dart';
import '../name_card.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<   HomePage> {
 var smText = "Change My Name";

TextEditingController te = TextEditingController();
var url=Uri.parse('https://jsonplaceholder.typicode.com/photos');

var data;


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData()async {
    var res = await http.get(url);
    data = jsonDecode(res.body);

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
          child: NameCardWid(smText: smText, te: te),
        ),
      )),
      drawer: MyDrawer(),
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
