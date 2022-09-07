import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
      home: const Loginpage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
      ),
    ));
}

