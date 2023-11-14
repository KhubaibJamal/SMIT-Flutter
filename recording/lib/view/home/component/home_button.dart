import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const HomeButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
