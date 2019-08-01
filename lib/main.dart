import 'package:flutter/material.dart';
import "package:quiz_app/quizBody/body.dart";
import 'materials.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Quiz App!",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color2,
        title: Text("Quiz App!"),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
