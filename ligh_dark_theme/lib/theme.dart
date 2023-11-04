import 'package:flutter/material.dart';

// ThemeData theme() {
//   return ThemeData();
// }

class CustomTheme {
  // for dark theme
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    primaryColor: const Color(0xff2f3949),
    secondaryHeaderColor: const Color(0xff131923),
    textTheme: const TextTheme(
      headlineLarge:
          TextStyle(color: Color(0xfffbfbfe), fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Color(0xfffbfbfe)),
      headlineSmall:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Color(0xff59606e), letterSpacing: 2.5),
      titleSmall:
          TextStyle(color: Color(0xff59606e), fontWeight: FontWeight.bold),
      titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xff131923)),
    iconTheme: const IconThemeData(color: Color(0xfffe6622)),
    appBarTheme:
        const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
  );

  // for light theme
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    primaryColor: const Color(0xffffffff),
    secondaryHeaderColor: const Color(0xffffffff),
    textTheme: const TextTheme(
      headlineLarge:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Color(0xff2d3954)),
      headlineSmall:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Color(0xff59606e), letterSpacing: 2.5),
      titleSmall: TextStyle(color: Color(0xff59606e)),
      titleLarge:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xfffbfbfe)),
    iconTheme: const IconThemeData(color: Color(0xff3995ff)),
    appBarTheme:
        const AppBarTheme(iconTheme: IconThemeData(color: Color(0xff2d3954))),
  );
}
