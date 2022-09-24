import 'package:flutter/material.dart';
import 'package:my_project/pages/home_page.dart';


class LoginPage extends StatefulWidget {
 static const String routeName ="/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey =GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[IconButton(
           icon: Icon(Icons.exit_to_app),
          onPressed: (){Navigator.pop(context);}, 
         )],
      title:Text("login Page"),
      ),
      body: Stack(
       fit:StackFit.expand,
        children:<Widget>[
          
          Image.asset("assets/xy.jpg",
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.6,),
          colorBlendMode:BlendMode.darken ,),
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: SingleChildScrollView(
        child: Form(
              key: formKey,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height:20
                          ),
                      TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (s){},
                        decoration: InputDecoration(
                          hintText:"Enter Email",
                          labelText: "Username"),
                          ),
                          SizedBox(
                          height:20
                          ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        validator: (s){},
                          obscureText:true,
                        decoration: InputDecoration(
                          hintText:"Enter Password",
                          labelText: "Password"),
                          ),
                          SizedBox(
                          height:30
                          ),
                      
                      ElevatedButton(onPressed: (){
                        formKey.currentState?.validate();
                        // Navigator.push (
                        //   context, MaterialPageRoute(
                        //     builder: (context)=>HomePage()));
                        Navigator.pushNamed(
                          context, HomePage.routeName);
                      },
                      child:Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow, // background
                      foregroundColor: Colors.black, // foreground
  ),
                      )
                      ],),
                ),
              ),
        )),
           ),
         )
         ],)
    );
  }
}