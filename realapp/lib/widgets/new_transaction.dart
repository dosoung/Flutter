import 'package:flutter/material.dart';
import './user_transaction.dart';

//입력하고 버튼으로 새로운 트랜잭션 만드는것
class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (String value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            FlatButton(
                child: Text('Add Transaction'),
                textColor: Colors.orange[300],
                onPressed: () => {}),
          ],
        ),
      ),
    );
  }
}
