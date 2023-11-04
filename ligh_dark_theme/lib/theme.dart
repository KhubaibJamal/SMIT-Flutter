import 'package:flutter/material.dart';

class CustomTheme {
  // for dark theme
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    // use as background of scaffold
    primaryColor: const Color(0xff2f3949),
    secondaryHeaderColor: const Color(0xff131923),

    // use for progress indicator
    primaryColorDark: const Color(0xfffe6622),
    primaryColorLight: const Color(0xffffd411),

    // text theme
    textTheme: const TextTheme(
      headlineLarge:
          TextStyle(color: Color(0xfffbfbfe), fontWeight: FontWeight.bold),
      headlineMedium:
          TextStyle(color: Color(0xfffbfbfe), fontWeight: FontWeight.bold),
      headlineSmall:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Color(0xff59606e), letterSpacing: 2.5),
      titleSmall:
          TextStyle(color: Color(0xff59606e), fontWeight: FontWeight.bold),
      titleLarge:
          TextStyle(color: Color(0xffbec1cc), fontWeight: FontWeight.bold),
    ),

    // bottom app bar color
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xff131923)),

    // icon color for bottomAppBar
    iconTheme: const IconThemeData(color: Color(0xfffe6622)),

    // product card color
    cardColor: const Color(0xff2f3949),

    // use for progress bar background
    canvasColor: const Color(0xff212733),

    // user for home scree drawer and back color of progress bar
    dividerColor: const Color(0xff414958),

    // user for arrow back color
    primaryIconTheme: const IconThemeData(color: Color(0xffffffff)),
  );

  // for light theme
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),

    // use as background of scaffold
    primaryColor: const Color(0xffffffff),
    secondaryHeaderColor: const Color(0xffffffff),

    // use for progress indicator
    primaryColorDark: const Color(0xFF3793ff),
    primaryColorLight: const Color(0xff40ddfd),

    // text theme
    textTheme: const TextTheme(
      headlineLarge:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
      headlineMedium:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
      headlineSmall:
          TextStyle(color: Color(0xff2d3954), fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Color(0xffbec1cc), letterSpacing: 2.5),
      titleSmall: TextStyle(color: Color(0xffbec1cc)),
      titleLarge:
          TextStyle(color: Color(0xffbec1cc), fontWeight: FontWeight.bold),
    ),

    // bottom app bar color
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xfffbfbfe)),

    // icon color for bottomAppBar
    iconTheme: const IconThemeData(color: Color(0xff3995ff)),

    // product card color
    cardColor: const Color(0xfff2f4f5),

    // use for progress bar background
    canvasColor: const Color(0xffffffff),

    // user for home scree drawer and back color of progress bar
    dividerColor: const Color(0xffd9dae5),

    // user for arrow back color
    primaryIconTheme: const IconThemeData(color: Color(0xff2d3954)),
  );
}
