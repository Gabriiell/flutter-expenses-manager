import 'package:flutter/material.dart';
import './transaction.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Manager',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<TransactionModel> transactions = [
    TransactionModel(
      id: 't1',
      title: 'New Shoes',
      amount: 66.99,
      date: DateTime.now(),
    ),
    TransactionModel(
      id: 't2',
      title: 'Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses Manager'),
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: Text('Future chart'),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: '\$\$'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      textColor: Colors.purple,
                      child: Text('Add Transaction'),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ...this.transactions.map((tx) => Transaction(tx)).toList()
              ],
            ),
          ],
        ));
  }
}
