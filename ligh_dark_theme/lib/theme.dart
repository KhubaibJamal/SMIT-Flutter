import 'package:flutter/material.dart';

// ThemeData theme() {
//   return ThemeData();
// }

class CustomTheme {
  // for dark theme
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    primaryColor: const Color(0xff2f3949),
    primaryColorDark: const Color(0xfffe6622),
    primaryColorLight: const Color(0xffffd411),
    secondaryHeaderColor: const Color(0xff131923),
    // text theme
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
    cardColor: const Color(0xff2f3949),
    canvasColor: const Color(0xff212733),
    dividerColor: const Color(0xff414958),
  );

  // for light theme
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    primaryColor: const Color(0xffffffff),
    primaryColorDark: const Color(0xFF3793ff),
    primaryColorLight: const Color(0xff40ddfd),
    secondaryHeaderColor: const Color(0xffffffff),

    // text theme
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
    cardColor: const Color(0xfff2f4f5),
    canvasColor: const Color(0xffffffff),
    dividerColor: const Color(0xffd9dae5),
  );
}
