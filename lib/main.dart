import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bello!!", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Text("Watch Me", style: TextStyle(color: Colors.white),),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [Colors.pink, Colors.yellow,]),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1, offset: Offset(4, 5)),
            ]
          ),
        ),
      ),
    );
  }
}