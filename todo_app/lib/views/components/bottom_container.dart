import 'package:flutter/material.dart';
import 'package:todo_app/wdgets/text_field_widget.dart';

class BottomContainer extends StatelessWidget {
  final TextEditingController todoController;
  final VoidCallback saveFunction;
  const BottomContainer({
    super.key,
    required this.todoController,
    required this.saveFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: saveFunction,
            icon: const Icon(
              Icons.send,
              color: Color(0xFF352F44),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
