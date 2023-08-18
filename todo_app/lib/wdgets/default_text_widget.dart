import 'package:flutter/material.dart';

class DefaultTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? textColor;
  const DefaultTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
