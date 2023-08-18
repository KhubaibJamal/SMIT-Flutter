import 'package:flutter/material.dart';
import 'package:todo_app/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Color(0xFF393646),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3F1D38)),
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
