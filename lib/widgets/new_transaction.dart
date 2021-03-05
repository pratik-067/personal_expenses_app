import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titileController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);

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
                )),
            TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: "Amount",
                )),
            FlatButton(
                onPressed: () {
                  addTx(
                    titileController.text,
                    double.parse(amountController.text),
                  );
                },
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
