import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 76, 127, 175),
          title: const Center(
              child: Text(
            "Hello!!",
          )),
        ),
        drawer: Drawer(
          child: Container(
            child: ListView(
              children: [
                const DrawerHeader(
                  
                  child: ListTile(
                    title: Text(
                      'Hello I am a drawer header',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 76, 127, 175)),
                      
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
