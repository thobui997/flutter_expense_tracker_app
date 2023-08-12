import 'package:flutter/material.dart';

import 'package:expense_tracker_app/models/expenses.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index].id),
        background: Container(
          color: const Color.fromARGB(255, 255, 97, 94),
          margin: const EdgeInsets.symmetric(horizontal: 30),
        ),
        onDismissed: (direction) => {
          onRemoveExpense(expenses[index]),
        },
        child: ExpenseItem(
          expense: expenses[index],
        ),
      ),
    );
  }
}
