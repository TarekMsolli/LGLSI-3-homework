import 'package:flutter/material.dart';

class ex1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ex1State();
  }
}

class ex1State extends State<ex1> {
  String phrase_initiale = "";
  String phrase_uc = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EX1")),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextField(
            onChanged: (value) {
              phrase_initiale = value;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter a String')),
        ElevatedButton(
            child: Text('Upper Case'),
            onPressed: () {
              phrase_uc = phrase_initiale.toUpperCase();
              setState(() {});
            }),
        Text(phrase_uc) //recevra la chaîne convertie
      ]),
    );
  }
}
