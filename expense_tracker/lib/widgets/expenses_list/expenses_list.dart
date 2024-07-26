import 'package:flutter/material.dart';
import 'package:expense/models/expenses.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        final expense = expenses[index];
        return Dismissible(
          key: ValueKey(expense.id),
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete, color: Colors.white, size: 40),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          ),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            onRemoveExpense(expense);
          },
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 30,
                child: Icon(categoryIcons[expense.category]),
              ),
              title: Text(expense.title,
                  style: Theme.of(context).textTheme.titleMedium),
              subtitle: Text(
                '${expense.amount.toStringAsFixed(2)} - ${expense.formattedDate}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => onRemoveExpense(expense),
              ),
            ),
          ),
        );
      },
    );
  }
}
