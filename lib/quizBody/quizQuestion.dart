import 'package:flutter/material.dart';
import '../materials.dart';

class QuizQuestion extends StatelessWidget {
  final String question;

  QuizQuestion({
    @required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 2.5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color1),
      height: 150,
      alignment: Alignment.center,
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: color3),
      ),
    );
  }
}
