import 'dart:ffi';

import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>question;
  final questionIndex;
  final Function answerQuestion;
  Quiz(this.answerQuestion,this.question,this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer)
        {
          return Answer(() => answerQuestion(answer['score']),answer['text'] as String);
        }).toList()
      ],
    );
  }
}
