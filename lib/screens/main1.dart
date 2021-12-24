import 'package:flutter/material.dart';
import 'package:flutter_application_1/coaches.dart';
import 'package:flutter_application_1/evaluate.dart';
import 'package:flutter_application_1/exercice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Exercice(),
      routes: {
        '/eval': (context) => Evaluation(),
      },
    );
  }
}
