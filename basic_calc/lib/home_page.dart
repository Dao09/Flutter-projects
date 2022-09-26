import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
var num1=0,num2=0,res=0;

final TextEditingController n1 =TextEditingController(text:"0");
final TextEditingController n2 =TextEditingController(text:"0");


void add(){
  setState(() {
    num1=int.parse(n1.text);
    num2=int.parse(n2.text);
    res=num1+num2;
  });
}

void sub(){
  setState(() {
    num1=int.parse(n1.text);
    num2=int.parse(n2.text);
    res=num1-num2;
  });
}

void mul(){
  setState(() {
    num1=int.parse(n1.text);
    num2=int.parse(n2.text);
    res=num1*num2;
  });

}

void div(){
  setState(() {
    num1=int.parse(n1.text);
    num2=int.parse(n2.text);
    res=(num1~/num2).toInt();
  });

}



  @override
  Widget build (BuildContext context){
    return new Scaffold (
      appBar:new AppBar(
        title: new Text("Calculator"),
      ),
      body:Container(
        padding:const EdgeInsets.all(40),
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output: $res",
            style: TextStyle(
              fontSize: 20.0,
              color:(Colors.red),
              fontWeight: FontWeight.bold
            ),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 1"),
                controller: n1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 2"),
                controller: n2
            ),
          Padding(padding: const EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              MaterialButton(
                onPressed: add, 
                child: Text("+"),
                color:Colors.amber),                
               MaterialButton(
                onPressed: sub, 
                child: Text("-"),
                color:Colors.amber),
              ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              MaterialButton(
                onPressed: mul, 
                child: Text("*"),
                color:Colors.amber),
                MaterialButton(
                onPressed: div, 
                child: Text("/"),
                color:Colors.amber),
              ],
          )
          ],
        ),
      
      )
    );
  }
}