import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onDeleteExpense,
  });

  final List<Expense> expensesList;
  final void Function(Expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(expensesList[index].title),
          subtitle: Text(expensesList[index].amount.toString()),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDeleteExpense(expensesList[index]),
          ),
        );
      },
    );
  }
}