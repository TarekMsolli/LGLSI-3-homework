import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  @override
  _CompteurState createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int pas = 1;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compteur")),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              pas = int.parse(value);
            } else {
              pas = 1;
            }
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Saisir le pas',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter += pas;
                });
              },
              child: Text('+'),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter -= pas;
                });
              },
              child: Text('-'),
            ),
          ],
        ),
        Text('Resultat: $counter'),
      ]),
    );
  }
}
