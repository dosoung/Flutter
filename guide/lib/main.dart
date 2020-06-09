import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  //build는 widget실행시 항상 필요함 widget을 리턴해야 하므로
  //widget은 항상 statelesswidget 또는 stateful widget을 가짐
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    }

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];

    //context 는 object이다.
    //MaterialApp and Text는 플러터에서 제공
    // <Widget>[] 이 리스트는 위젯의 타입을 갖는 리스트이다.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Frist App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1 '),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(questions[questionIndex]),
              onPressed: () {
                print('Answer 2 Chosen!');
              },
            ),
            RaisedButton(
                child: Text('Answer 3 '),
                onPressed: () => {print('Answer 3 Chosen!')}),
          ],
        ),
      ),
    );
  }
}
