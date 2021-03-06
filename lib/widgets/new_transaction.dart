import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titileController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);

  void submit() {
    final enteredtitle = titileController.text;
    final enteredamount = double.parse(amountController.text);
    if (enteredtitle.isEmpty || enteredamount <= 0) {
      return;
    }
    addTx(
      enteredtitle,
      enteredamount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            TextField(
              controller: titileController,
              decoration: InputDecoration(
                labelText: "Title",
              ),
              onSubmitted: (_) => submit(),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submit(),
            ),
            FlatButton(
                onPressed: submit,
                child: Text(
                  "Add transaction",
                  style: TextStyle(color: Colors.purple),
                )),
          ],
        ),
      ),
    );
  }
}
