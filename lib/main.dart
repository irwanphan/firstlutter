import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// MyAppState: the state of MyApp -> widget name / the name just convenient
// state is persisted, while the statefulwidget can be rebuild
// State belong to MyApp written in <>
class MyAppState extends State<MyApp> {
  
  var questionIndex = 0;
  
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fave color?', 
      'Who a ya?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'), 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print ('Answer 3 dah');
              }
            ),
          ],
        ),
      ),
    );
  }
}