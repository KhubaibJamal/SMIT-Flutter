import 'package:api/route.dart';
import 'package:api/screens/home/home_screen.dart';
import 'package:api/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API Integration',
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: route,
    );
  }
}
