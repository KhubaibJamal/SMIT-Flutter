import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/todo_provider.dart';
import 'package:todo_app/views/components/bottom_container.dart';
import 'package:todo_app/views/components/todo_list.dart';
import 'package:todo_app/widgets/default_text_widget.dart';
import 'package:todo_app/widgets/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController todoController = TextEditingController();
  TextEditingController updateTodoController = TextEditingController();

  @override
  void dispose() {
    todoController.dispose();
    updateTodoController.dispose();
    super.dispose();
  }

  // method for add items to the list
  void saveToList() {
    Provider.of<TodoProvider>(context, listen: false)
        .addTodo(todoController.text);
    todoController.clear();
    // dismiss on screen keyboard
    FocusManager.instance.primaryFocus?.unfocus();
  }

  // method to delete items from the list
  // void deleteFromList(int index) {
  //   Provider.of<TodoProvider>(context, listen: false).deleteTodoItem(index);
  // }

  // update in the list
  Future<void> updateTodo(int index) async {
    updateTodoController.text =
        Provider.of<TodoProvider>(context, listen: false).todoList[index];
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
                Provider.of<TodoProvider>(context, listen: false)
                    .updateTodoItem(index, updateTodoController.text);
                updateTodoController.clear();
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
    print("Build");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF352F44),
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
              child: Consumer<TodoProvider>(
                builder: (context, todoProvider, child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: todoProvider.todoList.length,
                    itemBuilder: (context, index) {
                      return TodoList(
                          height: height,
                          width: width,
                          text: todoProvider.todoList[index],
                          deleteFunction: () {
                            Provider.of<TodoProvider>(context, listen: false)
                                .deleteTodoItem(index);
                          },
                          editFunction: () {
                            updateTodo(index);
                          });
                    },
                  );
                },
              ),
            ),
            BottomContainer(
              todoController: todoController,
              saveFunction: () {
                saveToList();
              },
            ),
          ],
        ),
      ),
    );
  }
}
