import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz.dart';
import 'Result.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var questionIndex = 0;
  var TotalScore = 0;
  var QuestionList = [
    {
      "question": "what is you favorite color",
      "answers": [
        {"text": "White", "Score": 9},
        {"text": "Black", "Score": 3},
        {"text": "Green", "Score": 7},
        {"text": "Orange", "Score": 6},
      ],
    },
    {
      "question": "what is you favorite Animal",
      "answers": [
        {"text": "Dog", "Score": 7},
        {"text": "Elephant", "Score": 9},
        {"text": "Rabbit", "Score": 8},
        {"text": "Horse", "Score": 7},
      ],
    },
    {
      "question": "what is you favorite Movie",
      "answers": [
        {"text": "Avenger", "Score": 9},
        {"text": "Spider Man", "Score": 6},
        {"text": "Interstaller", "Score": 7},
        {"text": "The Martian", "Score": 8},
      ],
    },
    {
      "question": "what is you favorite Subject",
      "answers": [
        {"text": "Math", "Score": 9},
        {"text": "Science", "Score": 8},
        {"text": "English", "Score": 7},
        {"text": "Geography", "Score": 6},
      ],
    },
  ];

  void questionAnswer(int score) {
    TotalScore +=score;
    setState(
      (){
        questionIndex = questionIndex +1;
      }
    );
  
  }

  //open -a Simulator.app
  void resetQuiz(){
    setState(() {
         questionIndex = 0;
    TotalScore = 0;
    });
 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: questionIndex < QuestionList.length
            ? Quiz(
                questionList: QuestionList,
                questionLindex: questionIndex,
                questoinAnswer: questionAnswer,
              )
            : Result(ResetQuiz: resetQuiz,totalScore: TotalScore),
      ),
    );
  }
}
