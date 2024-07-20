import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Pizza',
        amount: 1900,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'other',
        amount: 800,
        date: DateTime.now(),
        category: Category.other)
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          
          Center(child: Container(height: 300,width: 300,)),
        ],
      ),
    );
  }
}
