import 'package:flutter/material.dart';

class Controller_card extends StatelessWidget {
  const Controller_card({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset('assets/Card_img.jpg'),
        const SizedBox(
          height: 20,
        ),
        Text(myText),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _nameController,
            // keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Enter your name",
              labelText:  "Name",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
      
    );
  }
}