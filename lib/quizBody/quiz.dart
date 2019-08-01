import 'package:flutter/material.dart';
import '../materials.dart';
import 'package:quiz_app/quizBody/quizAnswerList.dart';
import 'package:quiz_app/quizBody/quizQuestion.dart';
import 'package:quiz_app/quizBody/liveScore.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function goToNextQuestion;

  Quiz({
    @required this.question,
    @required this.answers,
    @required this.goToNextQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        QuizQuestion(
          question: question,
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          height: 3,
          color: color2,
        ),
        ...QuizAnswersList.createBtn(answers, goToNextQuestion),
        Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          height: 3,
          color: color2,
        ),
        LiveScore(),
      ],
    );
  }
}
