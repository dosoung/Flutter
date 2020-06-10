import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; //answerQuestion함수를 사용하기 위해 프로퍼티 지정
  final String answerText;
  Answer(this.selectHandler, this.answerText); //생성자로 초기화

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
