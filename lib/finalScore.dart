import 'package:flutter/material.dart';
import 'showAnswers.dart';
import 'materials.dart';

class FinalScore extends StatelessWidget {
  final Function resetFunction;

  FinalScore({
    @required this.resetFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color1,
            ),
            width: double.infinity,
            margin: EdgeInsets.only(left: 50, right: 50, bottom: 50),
            child: Column(
              children: <Widget>[
                _FinalScoreInfo(info: "Your Score : $score/15"),
                _FinalScoreInfo(info: "( ${((score / 15) * 100).toStringAsFixed(1)} % )"),
                _FinalScoreInfo(info: checkGPA()),
              ],
            ),
          ),
          _FinalScoreBtn(
            info: "Show correct answers",
            onPressFunc: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShowAnswers()),
              );
            },
          ),
          _FinalScoreBtn(
            info: "Restart quiz",
            onPressFunc: resetFunction,
          ),
        ],
      ),
    );
  }

  String checkGPA() {
    if ((score / 15) <= 0.50)
      return "You are so bad!";
    else if ((score / 15) * 100 <= 0.65)
      return "Accepted rating!";
    else if ((score / 15) * 100 <= 0.75)
      return "You are good!";
    else if ((score / 15) * 100 <= 0.85)
      return "Very good ^_^";
    else
      return "Excellent work ^_^";
  }
}

class _FinalScoreInfo extends StatelessWidget {
  final String info;

  _FinalScoreInfo({@required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          info,
          style: TextStyle(
            fontSize: 20,
            color: color3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _FinalScoreBtn extends StatelessWidget {
  final String info;
  final Function onPressFunc;

  _FinalScoreBtn({
    @required this.info,
    @required this.onPressFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPressFunc,
        color: color2,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          info,
          style: TextStyle(
            fontSize: 20,
            color: color3,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
