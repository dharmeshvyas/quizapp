import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionLindex;
  final Function questoinAnswer;

  Quiz(
      {required this.questionList,
      required this.questionLindex,
      required this.questoinAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          question: questionList[questionLindex]['question'] as String,
        ),
        ...(questionList[questionLindex]['answers']
                as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answer: answer['text'].toString(),
                  questoinAnswer: ()=>questoinAnswer(answer['Score']),
                ))
            .toList()
      ],
    );
  }
}
