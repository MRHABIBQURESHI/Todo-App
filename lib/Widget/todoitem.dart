import 'package:calculatorbmi/model/todo.dart';
import 'package:flutter/material.dart';

class todoitem extends StatelessWidget {
  final ToDo todo;
  final OnTodoChanged;
  final OnDeleteItem;
  const todoitem(
      {super.key,
      required this.todo,
      required this.OnTodoChanged,
      required this.OnDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print("Click On Todo Item");
          OnTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.Name!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.symmetric(vertical: 7),
            height: 60,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              icon: Icon(Icons.delete),
              onPressed: () {
                // print("Click On Delete Icon");
                OnDeleteItem(todo.id);
              },
            )),
      ),
    );
  }
}
