import "package:flutter/material.dart";
import 'package:personal_expenses_app/module/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;

  TransactionList({this.userTransaction});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView.builder(
          //add scrollable list
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "\$${userTransaction[index].amount.toStringAsFixed(2)}"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userTransaction[index].title),
                      Text(
                          userTransaction[index].transactionDateTime.toString())
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: userTransaction.length, //counter
        ));
  }
}
