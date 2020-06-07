import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// MyAppState: the state of MyApp -> widget name / the name just convenient
// state is persisted, while the statefulwidget can be rebuild
// State belong to MyApp written in <>
class _MyAppState extends State<MyApp> {
  
  var _questionIndex = 0;
  
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fave color?', 
        'answers': [
          'black',
          'black too',
          'a bit black'
        ]
      },
      {
        'questionText': 'What\'s your fave animal?', 
        'answers': [
          'tiger',
          'phanter',
          'cat'
        ]
      },
      {
        'questionText': 'What\'s your fave drink?', 
        'answers': [
          'coffee',
          'coffee milk',
          'cappucino',
          'water, with coffee'
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Column(
          children: [
            // question constructor in question.dart
            Question(
              questions[_questionIndex]['questionText'],
            ),
            // for every single question, map the answers to list
            //  ( as list<String>) let dart knows it is a list
            // ... separate operator, take list, pull values from it and add it to a list without nested list 
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}