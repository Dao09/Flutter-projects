import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'chat_message.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text("Demo Chat"),

      ),
      body: ChatScreen()
    );

  }
}




/*Column(
        children: <Widget>[
          Flexible(child: ListView.builder(
            padding: EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (_,int index) =>msgs[index],
            itemCount: msgs.length ),
            ),
          Divider(height: 1.0,),
          Container(
            decoration: BoxDecoration(
                          color:Theme.of(context).cardColor,

            ),
            child: _textComposerWidget(),
          )
        ]
      ),*/