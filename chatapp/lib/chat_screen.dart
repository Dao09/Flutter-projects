import 'home_page.dart';
import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>{
final TextEditingController t1 = TextEditingController();
final List<ChatMessage> msgs = <ChatMessage>[];

void _handleSubmitted(String text){
  t1.clear();
  ChatMessage msg =ChatMessage(
    text:text,

  );
  setState(() {
    msgs.insert(0, msg);
  });
}

Widget _textComposerWidget(){
  return IconTheme(
    data: IconThemeData(
      color: Colors.greenAccent
    ),
    child: Container(
      margin: const EdgeInsets.all(10),
      child:Row(
        children:<Widget>[
          Flexible(child:  TextField(
        decoration: InputDecoration.collapsed(
          hintText: "send a message"
        ),
        controller: t1,
        onSubmitted: _handleSubmitted,
      ),),
      Container(
        margin: const EdgeInsets.all(10),
        child: IconButton(onPressed: (){
          _handleSubmitted(t1.text);
        }, icon: Icon(Icons.send))
      )
  
        ],
  
      )
    ),
  );
}

@override 
Widget build(BuildContext context){
  return Column(
        children: <Widget>[
          Flexible(child: ListView.builder(
            padding: EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (_,int index) =>msgs[index],  //(context as _,int index)
            itemCount: msgs.length ),
            ),
          Divider(height: 0.8,),
          Container(
            decoration: BoxDecoration(
                          color:Theme.of(context).cardColor,

            ),
            child: _textComposerWidget(),
          )
        ]
      );
}
}