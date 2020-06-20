import 'package:flutter/material.dart';

//입력하고 버튼으로 새로운 트랜잭션 만드는것
class NewTransaction extends StatelessWidget {
  final addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  //생성자 실행할때 addNewTransaction이 _addNewTransaction을 사용하겠다고 연결 시켜주는 거임
  NewTransaction(this.addNewTransaction);

  void submitData() {
    final enterTitle = titleController.text;
    final enterdAmount = double.parse(amountController.text);

    if(enterTitle.isEmpty || enterdAmount <=0) {
      return ;
    }

    addNewTransaction
    (
      enterTitle,
      enterdAmount
      );
            
  }

  

  @override
  Widget build(BuildContext context) {
  
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            //TextField의 onSubmit은 우리가 입력값을 넣고 엔터를 누르면 그또한 실행되게 하기 위한것이다.
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(), //새로운 익명함수를 작성 한 것이고 submitData함수를 불러오는 익명함수를 생성한것
              
              // onChanged: (String value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              controller: amountController,
              //아래는 function(_) {submitData();} 와같은 이야이기이다 즉 함수에서 submitData()함수를 즉시실행시키겠다는 의미.
              onSubmitted: (_) => submitData(),  
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.orange[300],
              onPressed: submitData, //함수의 주소값만 가져옴 즉 submitdata 함수를 포인터로 가리키고 그 주소로 가서 함수를 실행함
            )
          ],
        ),
      ),
    );
  }
}
