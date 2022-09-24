import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
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
      ])
      );
  }
}