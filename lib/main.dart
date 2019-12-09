import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      "questionText": "Do you like UTM?",
      'answers': [
        {"text": "Yes", "score": 20},
        {"text": "No", "score": 10},
        {"text": "Perhapes", "score": 0},
      ]
    },
    {
      "questionText": "Do you Comp Sci?",
      'answers': [
        {"text": "EWWWW", "score": 5},
        {"text": "Yes", "score": 30},
        {"text": "Hell no", "score": 15},
        {"text": "What's that?", "score": 10},
      ]
    },
    {
      "questionText": "Drop out?",
      'answers': [
        {"text": "Yes?", "score": 25},
        {"text": "Hotel?", "score": 3},
        {"text": "Trivago?", "score": 50},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      this._questionIndex++;
      print(this._questionIndex);
      if (this._questionIndex < _questions.length) {
        print("we have more questions");
      } else {
        print("no more questions");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: this._questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
