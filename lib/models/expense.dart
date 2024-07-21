import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMEd(); 

enum Category { food, travel, entertainment, other }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.other: Icons.emoji_emotions,
  Category.entertainment: Icons.movie
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // In Dart intializer list can be used to intialize class properties like id with values that are not recieved in the constructor funtion arguemnt.

  final String title;
  final double amount;
  final String id; //=uuid.v4();
  final DateTime date;
  final Category category;

 String get formattedDate{return formatter.format(date);}
}
