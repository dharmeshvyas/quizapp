import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int totalScore;
  late VoidCallback ResetQuiz;
  Result({required this.ResetQuiz, required this.totalScore});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("You submited all and your score is ${totalScore}"),
          ElevatedButton(onPressed: ResetQuiz, child: Text("Reset Quiz"))
        ],
      ),
    );
  }
}
