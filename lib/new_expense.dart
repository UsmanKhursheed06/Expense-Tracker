import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
 
 //Another approach to store the user input

 final _titleController=TextEditingController();
// when using TextEditting controller you must destroy the object because it takes up memory.

 @override
  void dispose() {
    _titleController.dispose();
    
    super.dispose();
  }


 
  // var enteredTitle = '';

  // void _saveTitleInput(String inputValue) {
  //   enteredTitle = inputValue;
  // }

  @override
  Widget build(ctx) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            // onChanged: _saveTitleInput,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 230,height: 20,),
              ElevatedButton(
                onPressed: () {
                  print(_titleController);
                },
                child: const Text('Save Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
