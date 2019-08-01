import 'package:flutter/material.dart';
import '../materials.dart';

class QuizAnswersList {
  static List<_AnswerBtn> createBtn(List<String> mAnswer, Function mFunction) {
    List<_AnswerBtn> answerBtns = List(4);
    for (int i = 0; i < mAnswer.length; i++) {
      answerBtns[i] = _AnswerBtn(mFunction, mAnswer[i]);
    }
    return answerBtns;
  }
}

class _AnswerBtn extends StatelessWidget {
  final String _answer;
  final Function _goToNextQuestion;

  _AnswerBtn(this._goToNextQuestion, this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 2.5, bottom: 2.5),
      child: RaisedButton(
        onPressed: () {
          _goToNextQuestion(_answer);
        },
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: color1,
        splashColor: color2,
        child: Text(
          _answer,
          style: TextStyle(
            fontSize: 16,
            color: color3,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
