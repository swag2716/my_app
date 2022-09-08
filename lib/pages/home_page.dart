import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Drawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "Chai";
  String point = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    final Uri url = Uri.parse(point);
    final res = await http.get(url);
    data = jsonDecode(res.body);
    // print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Welcome to Home Page",
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool("loggedIn", false);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("ID : ${data[index]["id"]}"),
                        leading: Image.network(data[index]["url"]),
                      ),
                    );
                  },
                )
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
