import 'package:flutter/material.dart';
import 'expenses_app.dart';

void main() {
  runApp(const ExpenseApp());
}

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold();
}
