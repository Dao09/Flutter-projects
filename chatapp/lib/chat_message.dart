import 'package:flutter/material.dart';

const String _name='xyz';

class ChatMessage extends StatelessWidget{
  final String text;
  ChatMessage({this.text=''});


  @override
  Widget build (BuildContext context){
    return  Container(
      margin: const EdgeInsets.symmetric(vertical:10),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right:16),
            child: CircleAvatar(
              child: Text(_name[0]),
            )
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name,style: Theme.of(context).textTheme.bodyMedium),
              Container(margin: const EdgeInsets.only(top: 5),
              child:new Text(text)
              )
            ],
          )
   
      ],)
    );
  }
}