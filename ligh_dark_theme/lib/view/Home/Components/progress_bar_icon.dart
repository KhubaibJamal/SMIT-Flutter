import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ProgressBarIcon extends StatelessWidget {
  const ProgressBarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Positioned(
      top: 43,
      left: 96,
      child: GestureDetector(
        // onHighlightChanged: (value) {
        //   print("object");
        //   themeProvider.isDarkMode;
        //   themeProvider.toggleTheme(value);
        // },
        onTap: () {
          print("object");
          themeProvider.isDarkMode;
          themeProvider.toggleTheme(true);
        },
        child: Image.asset(
          "assets/images/energy.png",
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Positioned(
      top: 43,
      left: 96,
      child: Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          themeProvider.toggleTheme(value);
        },
        activeColor: Colors.pink,
        activeTrackColor: Colors.yellow,
        inactiveThumbColor: Colors.black,
        inactiveTrackColor: Colors.amber,
      ),
    );
  }
}
