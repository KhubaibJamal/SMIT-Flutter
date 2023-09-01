import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController todoController;
  final String hintText;
  const TextFieldWidget(
      {super.key, required this.todoController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      controller: todoController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
