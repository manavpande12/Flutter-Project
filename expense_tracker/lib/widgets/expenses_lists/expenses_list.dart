import 'package:expense_tracker/widgets/expenses_lists/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });
  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    /* AutoMatically Scrollable, Imporve Performnace
    Display The list when about to see only ,
    ListView Use Whene You Don't Know How Long Is The List. 
    So Here We will not use Column */

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index]),
        
        background: Container(
          
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
          
        ),
        
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpensesItem(expenses[index]),
      ),
    );
  }
}
