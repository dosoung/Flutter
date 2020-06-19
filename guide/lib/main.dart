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
    // TODO: implement createState
    return _MyAppState();
  }
}

//<MyApp>사용 하면 MyApp에 속해 있는 클래스인것 을 안다.
// _ 이 언더바는 private를 의미한다 다른곳에서 사용할 수 없게한다.

final questions = [
  {
    'questionText': 'What\'s your favorite color?',
    'answers': ['Blue', 'Black', 'White', 'Sky'],
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answers': ['Dog', 'Cat', 'Lion', 'Giraffe'],
  },
  {
    'questionText': 'Who\'s your favorit instructor?',
    'answers': ['Dohyun', 'SOUNG', 'DOSOUNG', 'Hello'],
  },
];

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  //build는 widget실행시 항상 필요함 widget을 리턴해야 하므로
  //widget은 항상 statelesswidget 또는 stateful widget을 가짐

  void _answerQuestion() {
    var aBool = true;

    if (_questionIndex < questions.length) {
      print('We have more quiestions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            //Text => Question
            Question(
              questions[_questionIndex]['questionText'],
            ),
            //dart가 answer키가 가지고 있는 벨류가 어떤 타입인지 모르므로 우리가 리스트라고 말해준다.
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList() //Answer
          ],
        ),
      ),
    );
  }
}
