import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../module/Transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> _transaction = [
    Transaction("Grosary", 2000.0, DateTime.now(), DateTime.now().toString()),
    Transaction("Shopping", 10000.0, DateTime.now(), DateTime.now().toString()),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTX = new Transaction(
      txTitle,
      txAmount,
      DateTime.now(),
      DateTime.now().toString(),
    );
    setState(() {
      _transaction.add(newTX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(
          userTransaction: _transaction,
        ),
      ],
    );
  }
}
