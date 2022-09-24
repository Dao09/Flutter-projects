import 'package:flutter/material.dart';

class NameCardWid extends StatelessWidget {
  const NameCardWid({
    Key? key,
    required this.smText,
    required this.te,
  }) : super(key: key);

  final String smText;
  final TextEditingController te;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}