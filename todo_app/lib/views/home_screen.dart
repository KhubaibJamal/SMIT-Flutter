import 'package:flutter/material.dart';
import 'package:todo_app/views/components/todo_list.dart';
import 'package:todo_app/wdgets/default_text_widget.dart';
import 'package:todo_app/wdgets/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController todoController = TextEditingController();
  TextEditingController updateTodoController = TextEditingController();
  List todoList = [
    "do flutter practice ",
    "bye laptop",
    "Fluttering",
    "Meeting at 8 pm",
  ];

  // method for add items to the list
  void saveToList() {
    setState(() {
      todoList.add(todoController.text);
      todoController.clear();
      // dismiss on screen keyboard
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  // method to delete items from the list
  void deleteFromList(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  // update in the list
  Future<void> updateTodo(int index) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const DefaultTextWidget(
            text: "Update Todo",
            fontSize: 20,
            textColor: Colors.black,
          ),
          content: TextFieldWidget(
            todoController: updateTodoController,
            hintText: todoController.text,
          ),
          actions: <Widget>[
            TextButton(
              child: const DefaultTextWidget(
                text: "Update",
                fontSize: 18,
              ),
              onPressed: () {
                setState(() {
                  todoList[index] = updateTodoController.text;
                });
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const DefaultTextWidget(text: "Cancel", fontSize: 18),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const DefaultTextWidget(
            text: "Todo",
            fontSize: 32,
            textColor: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return TodoList(
                      height: height,
                      width: width,
                      text: "${todoList[index]}",
                      deleteFunction: () {
                        deleteFromList(index);
                      },
                      editFunction: () {
                        updateTodo(index);
                      });
                },
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        todoController: todoController,
                        hintText: "Enter Todo Here",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        saveToList();
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Color(0xff3F1D38),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
