import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final double amount;
  final DateTime transactionDateTime;
  final String id;

  Transaction(
    @required this.title,
    @required this.amount,
    @required this.transactionDateTime,
    @required this.id,
  );
}