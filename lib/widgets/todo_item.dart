import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key, required this.todo});

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.check_box),
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: const TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
