import 'question.dart';
import 'package:flutter/material.dart';
import 'answer.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
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
        'answers': ['pkd', 'Bglr', 'cbe', 'Delhi'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget example App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]['questionText'] as String),
            ...(question[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
