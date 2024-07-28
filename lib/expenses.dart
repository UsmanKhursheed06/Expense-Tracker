import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_tracker/expenses_list.dart';

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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('Modal Bottom sheet'),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))],
        centerTitle: true,
        title:  Text('Expense Tracker',style: GoogleFonts.abrilFatface(color: Colors.white),),
      ),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}









//....SLIVER APP BAR...
   
       //CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    //         title: Text('EXPENSE TRACKER',
    //             style: GoogleFonts.sofia(color: Colors.white, fontSize: 18)),
    //         actions: [
    //           IconButton(
    //             onPressed: () {},
    //             icon: const Icon(Icons.add),
    //             alignment: Alignment.topRight,
    //             color: Colors.white,
    //             iconSize: 28,
    //           )
    //         ],
    //         expandedHeight: 300,
    //         backgroundColor: Colors.green,
    //       ),
    //       SliverToBoxAdapter(
    //         child: Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Container(
    //             color: Colors.purple,
    //             height: 300,
    //             width: 500,
    //           ),
    //         ),
    //       ),
       

    //     ExpensesList(expenses: _registeredExpenses)
    //     ],
    //   ),
    // );
