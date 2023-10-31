import 'package:flutter/material.dart';

class jeb extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return jebState();
  }
}

class jebState extends State<jeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
