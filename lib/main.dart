// ignore_for_file: prefer_const_constructors, deprecated_member_use


import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// ignore: use_key_in_widget_constructors
class MyAppState extends State<MyApp> {
  var question = [
    {
      'questionText': '1.How many Infinity Stones are there?',
      'answers': [
        {'text': 'Three', 'score': 0},
        {'text': 'Four', 'score': 0},
        {'text': 'Five', 'score': 0},
        {'text': 'Six', 'score': 1},
      ],
    },
    {
      'questionText': '2.Who was able to pick up Thor’s hammer in Endgame?',
      'answers': [
        {'text': 'Ironman', 'score': 0},
        {'text': 'Captain America', 'score': 1},
        {'text': 'Hulk', 'score': 0},
        {'text': 'Loki', 'score': 0},
      ],
    },
    {
      'questionText': '3.In which movie did Spider-Man make his first appearance in the MCU?',
      'answers': [
        {'text': 'Spiderman', 'score': 1},
        {'text': 'Avengers', 'score': 0},
        {'text': 'Homecoming', 'score': 0},
        {'text': 'No Way Home', 'score': 0},
      ],
    },
    {
      'questionText': '4.What is the name of Thor’s hammer?',
      'answers': [
        {'text': 'Renor', 'score': 0},
        {'text': 'Mjölnir', 'score': 1},
        {'text': 'Vintel', 'score': 0},
        {'text': 'Pedeietr', 'score': 0},
      ],
    },
    {
      'questionText':
      '5.Before becoming Vision, what is the name of Iron Man’s A.I. butler?',
      'answers': [
        {'text': 'Mulfir', 'score': 0},
        {'text': 'Spidey', 'score': 0},
        {'text': 'Jarvis', 'score': 1},
        {'text': 'Pienolis', 'score': 0},
      ],
    },
    {
      'questionText': '6.Who made Captain America’s shield?',
      'answers': [
        {'text': 'Wisper', 'score': 0},
        {'text': 'Ragnarok', 'score': 0},
        {'text': 'Captain America', 'score': 0},
        {'text': 'Howard Stark', 'score': 1},
      ],
    },
    {
      'questionText': '7.What actor plays the role of Iron Man?',
      'answers': [
          {'text': 'Jhonny Depp', 'score': 0},
          {'text': 'Leonardo Decaprio', 'score': 0},
          {'text': 'Robert Downey Jr.', 'score': 1},
          {'text': 'Tom Holland', 'score': 0}
      ]
    },
    {
      'questionText':
      '8.This film in the Marvel universe is the highest grossing film in the franchise with 858 million dollars?',
      'answers': [
        {'text': 'Avengers EndGame', 'score': 1},
        {'text': 'Avengers Infinity War', 'score': 0},
        {'text': 'No Way Home', 'score': 0},
        {'text': 'Spiderman', 'score': 0}
      ]
    },
    {
      'questionText': '9.Which hero is considered as “The First Avenger?',
      'answers': [
        {'text': 'Ironman', 'score': 0},
        {'text': 'Thor', 'score': 0},
        {'text': 'Captain America', 'score': 1},
        {'text': 'Hulk', 'score': 0},
      ],
    },
    {
      'questionText': '10.Who is strongest Avenger?',
      'answers': [
        {'text': 'Wanda', 'score': 1},
        {'text': 'Thor', 'score': 0},
        {'text': 'Ironman', 'score': 0},
        {'text': 'Captain Marvel', 'score': 0},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;
  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child:Text("Quiz App")),
        ),
        body: questionIndex < question.length
            ? Quiz(answerQuestion, question, questionIndex)
            : Result(totalScore,restartQuiz),
      ),
    );
  }
}
