import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  List<String> todoList = [
    "do flutter practice ",
    "bye laptop",
    "Fluttering",
    "Meeting at 8 pm",
  ];

  // add items on todo
  void addTodo(String todo) {
    todoList.add(todo);
    notifyListeners();
  }

  // delete items from todo list
  void deleteTodoItem(int index) {
    todoList.removeAt(index);
    notifyListeners();
  }

  // update items from todo list
  void updateTodoItem(int index, String newTodo) {
    todoList[index] = newTodo;
    notifyListeners();
  }
}
