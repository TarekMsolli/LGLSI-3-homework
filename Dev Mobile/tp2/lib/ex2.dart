import 'package:flutter/material.dart';

class ex2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ex2State();
  }
}

class ex2State extends State {
//variable qui sauvegardera l'état du checkbox
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Etat du checkbox:   $check'),
          Checkbox(
              value: check,
              onChanged: (value) {
                check = value;
                setState(() {});
              })
        ])));
  }
}
