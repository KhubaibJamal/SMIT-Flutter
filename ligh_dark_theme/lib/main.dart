import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/provider/theme_provider.dart';
import 'package:ligh_dark_theme/theme.dart';
import 'package:ligh_dark_theme/component/bottom_app_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Light Dark Theme',
          themeMode: themeProvider.themeMode,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          home: const BottomNavigationAppBar(),
        );
      },
    );
  }
}
