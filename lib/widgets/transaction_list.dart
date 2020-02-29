import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransacionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransacionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        itemBuilder: (ctx, idx) {
          return Card(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                ),
                child: Text(
                  '\$${transactions[idx].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  transactions[idx].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  DateFormat.yMMMd().format(transactions[idx].date),
                  style: TextStyle(color: Colors.grey),
                )
              ]),
            ],
          ));
        },
        itemCount: transactions.length,
        // children: transactions.map((trx) {
        //    }).toList(),
      ),
    );
  }
}
