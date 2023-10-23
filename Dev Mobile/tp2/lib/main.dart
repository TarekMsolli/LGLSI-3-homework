import 'package:flutter/material.dart';
import 'ex1.dart';
import 'Compteur.dart';
import 'ex2.dart';
import 'compte_rendu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompteRendu(),
    );
  }
}
