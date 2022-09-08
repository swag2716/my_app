import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/uitls/constants.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/Card_img.jpg', fit: BoxFit.cover,color: Colors.black.withOpacity(0.4),colorBlendMode: BlendMode.darken,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Username",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Constants.prefs.setBool("loggedIn", true);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_page()));
                          },
                          child: const Text('SIGN IN'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
