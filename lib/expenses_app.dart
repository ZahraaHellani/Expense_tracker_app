import 'package:flutter/material.dart';
import 'models/expense.dart';

class ExpenseApp extends StatefulWidget {
  // registeredExpensesList is not anymore a private fixed list, it is now loaded from the database and passed to ExpenseApp from main.dart
  const ExpenseApp({super.key});

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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expenses')),
      body: const Center(child: Text('Expenses home')),
    );
  }
}