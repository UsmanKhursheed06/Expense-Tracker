import 'package:uuid/uuid.dart';

const uuid=Uuid();

class Expense {
  Expense({required this.title, required this.amount, required this.date});

  final String title;
  final double amount;
  final String id=uuid.v4();
  final DateTime date;
}
