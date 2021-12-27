import 'package:widget_egs/question.dart';
import 'package:widget_egs/result.dart';

import './quiz.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your Favourite colour',
      'answers': ['Black', 'Red', 'Blue', 'White'],
    },
    {
      'questionText': 'What\'s your favourite Animal',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Which is your Favourite Place',
      'answers': ['Pkd', 'Bglr', 'Cbe', 'Delhi'],
    }
  ];
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    /*if (_questionIndex < question.length) {
      print('WE have more questions');
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Widget example App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result()),
    );
  }
}
