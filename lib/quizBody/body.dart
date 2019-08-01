import 'package:flutter/material.dart';
import '../finalScore.dart';
import 'package:quiz_app/quizBody/quiz.dart';
import '../materials.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        image: DecorationImage(
          image: AssetImage("images/im1.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: questionIndex < source.length
          ? Quiz(
              question: source[questionIndex]["question"],
              answers: source[questionIndex]["answers"],
              goToNextQuestion: _goToNextQuestion,
            )
          : FinalScore(
              resetFunction: _resetQuiz,
            ),
    );
  }

  void _goToNextQuestion(String myAnswer) {
    setState(() {
      if (myAnswer == source[questionIndex]["correct"]) {
        score += 1;
      }
      questionIndex += 1;
      print(questionIndex);
    });
  }

  void _resetQuiz() {
    setState(() {
      score = 0;
      questionIndex = 0;
    });
  }
}
