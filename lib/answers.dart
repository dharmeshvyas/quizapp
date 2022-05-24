import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  late String answer;
  late Function questoinAnswer;
  Answer({required this.answer,required this.questoinAnswer});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: ElevatedButton(onPressed: ()=>questoinAnswer(), child: Text(answer)));
  }
}
