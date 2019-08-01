import 'package:flutter/material.dart';
import '../materials.dart';

class LiveScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ScoreColumn(
            label: "Question:",
            data: "${questionIndex + 1}/15",
          ),
          _ScoreColumn(
            label: "Correct:",
            data: "$score",
          ),
          _ScoreColumn(
            label: "Wrong:",
            data: "${questionIndex - score}",
          )
        ],
      ),
    );
  }
}

class _ScoreColumn extends StatelessWidget {
  final String label;
  final String data;

  _ScoreColumn({@required this.label, @required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: color2,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          width: 75,
          height: 45,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: color1,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            data,
            style: TextStyle(
              fontSize: 17,
              color: color3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
