import 'package:flutter/material.dart';

// ThemeData theme() {
//   return ThemeData();
// }

class CustomTheme {
  // for dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
  );

  // for light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );
}
