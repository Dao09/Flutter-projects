
import 'package:flutter/material.dart';

import 'package:my_project/pages/home_page.dart';
import 'package:my_project/pages/login_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      LoginPage.routeName: (context)=> LoginPage(),
      HomePage.routeName: (context)=> HomePage(),
      
    }
  )); //can add MaterialApp()
}



