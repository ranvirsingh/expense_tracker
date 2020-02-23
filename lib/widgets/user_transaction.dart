import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: "101", title: "New Shoe", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "102",
        title: "Weekly Grocercies",
        amount: 29.99,
        date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
      print(_userTransactions.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransacionList(_userTransactions)],
    );
  }
}
