import 'package:flutter/material.dart';
import 'package:todo_app/widgets/default_text_widget.dart';

class TodoList extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final VoidCallback deleteFunction;
  final VoidCallback editFunction;
  const TodoList({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.deleteFunction,
    required this.editFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      height: height * 0.17,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xFF5C5470),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextWidget(
            text: text,
            fontSize: 24,
            textColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: deleteFunction,
                icon: const Icon(
                  Icons.delete,
                  size: 25,
                  color: Colors.red,
                ),
              ),
              // edit icon button
              IconButton(
                onPressed: editFunction,
                icon: const Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
