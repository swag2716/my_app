import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Constants{
  late SharedPreferences prefs;
}
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
      home: const Loginpage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
      ),
    ));
}

