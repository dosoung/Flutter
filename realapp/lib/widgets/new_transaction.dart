import 'package:flutter/material.dart';

//입력하고 버튼으로 새로운 트랜잭션 만드는것
class NewTransaction extends StatelessWidget {
  final addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  //생성자 실행할때 addNewTransaction이 _addNewTransaction을 사용하겠다고 연결 시켜주는 거임
  NewTransaction(this.addNewTransaction);

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
              onPressed: () => addNewTransaction(
                  titleController.text, double.parse(amountController.text)),
            )
          ],
        ),
      ),
    );
  }
}
