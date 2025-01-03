import 'package:expense_tracker/expense_item.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build (context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => ExpenseItem(expense:expenses[index]),
      itemCount: expenses.length,
    );
  }
}
