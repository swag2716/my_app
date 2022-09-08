import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: prefs.getBool("loggedIn") == true
        ? const HomePage()
        : const Loginpage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
      textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    ),
  ));
}
