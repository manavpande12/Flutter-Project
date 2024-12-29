import 'package:expense_tracker/widgets/expenses_lists/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {

    /* AutoMatically Scrollable, Imporve Performnace
    Display The list when about to see only ,
    ListView Use Whene You Don't Know How Long Is The List. 
    So Here We will not use Column */

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpensesItem(expenses[index]),
    );
  }
}
