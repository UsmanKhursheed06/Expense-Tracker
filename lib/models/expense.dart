import 'package:uuid/uuid.dart';

const uuid=Uuid();

enum Category {food,travel,entertainment,other}

class Expense {
  Expense({required this.title, required this.amount, required this.date,required this.category}):id=uuid.v4(); // In Dart intializer list can be used to intialize class properties like id with values that are not recieved in the constructor funtion arguemnt.

  
  final String title;
  final double amount;
  final String id;    //=uuid.v4();
  final DateTime date; 
  final Category category;
}
