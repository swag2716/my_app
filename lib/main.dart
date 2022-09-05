import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Bello!!",
    home:myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bello!!"),
      ),
      body: Container(
        child: Center(child: Text("This is my first flutter app")),
      ),
    );
  }
}