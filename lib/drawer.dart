import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Colors.purple),
          child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Swapnika_Agrawal"),
              accountEmail: Text("swapnikaagrawal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1603570388466-eb4fe5617f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            )
          ]),
        ),
      );
  }
}