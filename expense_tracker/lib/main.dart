import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    )
  );
}