import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  double amount;
  DateTime date;

  //{} 를 통해서 순서 상관 없이 이름으로만 파라미터를 매핑 함
  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
