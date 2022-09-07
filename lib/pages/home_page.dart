import 'package:flutter/material.dart';
import 'my_app.dart';

class home_page extends StatelessWidget {
  const home_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
      ),
    );
  }
}