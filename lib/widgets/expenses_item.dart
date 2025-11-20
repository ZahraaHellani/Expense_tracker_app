import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../screens/expense_details.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense,{
    super.key,
  });

  final Expense expense;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: const Color.fromARGB(108, 44, 56, 187),
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ExpenseDetails(
                        expense: expense,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(expense.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${expense.amount.toStringAsFixed(2)}"),
                  //Spacer(),
                  Row(
                    children: [
                      Icon(Icons.category),
                      SizedBox(width: 8),
                      Text(DateFormat.yMMMd().format(expense.date))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}