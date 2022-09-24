
import 'package:flutter/material.dart';

import 'package:my_project/pages/home_page.dart';
import 'package:my_project/pages/login_pages.dart';
import 'package:my_project/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp()); //can add MaterialApp()
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
return MaterialApp(
  debugShowCheckedModeBanner:  false,

  home: Constants.prefs?.getBool("LoggedIn")==true?HomePage():LoginPage(),
  theme: ThemeData(
    primarySwatch: Colors.purple,
  ),
  routes: {
    LoginPage.routeName: (context)=> LoginPage(),
    HomePage.routeName: (context)=> HomePage(),
    
  }
);
  }
  
}



