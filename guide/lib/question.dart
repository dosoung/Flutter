import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //초기화 안했을때는 변수타입을 해주는 게 좋다.
  //final을 사용하면 생성자에서 할당 되어 객체가 생성 되고부터는 변수를 바꿀 수 없다는 것이다.
  final String questionText;

  Question(this.questionText); //순서로 인식함 만약 이름으로 인식하게 해주고 싶으면 {} 써야댐

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
