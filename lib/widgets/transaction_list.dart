import "package:flutter/material.dart";
import 'package:personal_expenses_app/module/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;

  TransactionList({this.userTransaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransaction.map((tx) {
        return Container(
          width: 600,
          height: 75,
          child: Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(tx.amount.toString()),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.title),
                    Text(tx.transactionDateTime.toString())
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
