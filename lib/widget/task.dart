import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;
  final bool done;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  TaskTile({
    required this.text,
    required this.done,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: IconButton(
          icon: Icon(
            done ? Icons.check_circle : Icons.radio_button_unchecked,
            color: done ? Colors.green : Colors.grey,
          ),
          onPressed: onToggle,
        ),
        title: Text(
          text,
          style: TextStyle(
            decoration: done ? TextDecoration.lineThrough : null,
            color: done ? Colors.grey : Colors.black,
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.redAccent),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
