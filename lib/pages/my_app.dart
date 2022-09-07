import 'dart:convert';

import 'package:flutter/material.dart';
import '../Drawer.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "Chai";
  String point = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    final Uri url = Uri.parse(point);
    final res = await http.get(url);
    data = jsonDecode(res.body);
    // print(data);
    setState(() {    
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Bello!!",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: data != null
              ? ListView.builder(itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID : ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  ),
                );
              },)
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: const MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ));
  }
}
