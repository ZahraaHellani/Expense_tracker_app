import 'package:flutter/material.dart';
import 'models/expense.dart';
import 'widgets/expenses_list.dart';

class ExpenseApp extends StatefulWidget {
  const ExpenseApp({
    super.key,
    required this.registeredExpensesList,
    required this.onDeleteExpense,
    });

  final List<Expense> registeredExpensesList;
  final void Function(Expense) onDeleteExpense;

  @override 
  State<ExpenseApp> createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  final List<Expense> _registeredExpensesList = [
    Expense(
      amount: 5,
      date: DateTime.now(),
      title: 'Burger',
      category: Category.food
    ),
    Expense(
      amount: 15.45,
      date: DateTime.now(),
      title: 'Taxi',
      category: Category.work
    ),
    Expense(
      amount: 10.35,
      date: DateTime.now(),
      title: 'Movie',
      category: Category.leisure
    ),
    Expense(
      amount: 20,
      date: DateTime.now(),
      title: 'Paris',
      category: Category.travel
    )
  ];

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          'No expenses found! Add some, or select a different filter',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
    if (widget.registeredExpensesList.isNotEmpty) {
      mainContent = ExpensesList(
        expensesList: widget.registeredExpensesList,
        onDeleteExpense: widget.onDeleteExpense,
      );
    }
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}