import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Expenses(),
    )
  );
}
