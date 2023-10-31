import 'package:flutter/material.dart';
import 'jeb.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: jeb(),
    );
  }
}
