import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState()
  {
    return _NewExpenseState();

  }
}

class _NewExpenseState extends State<NewExpense>
{
  @override
  Widget build(ctx)
  {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: [TextField(decoration: InputDecoration(),)],),
    );
  }
}