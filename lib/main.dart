import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
      textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _nameController =  TextEditingController();
  var myText = "Chai";

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "Bello!!",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/Card_img.jpg'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(myText),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _nameController,
                      // keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: "Enter your name",
                        labelText:  "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
                
              )
              ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
