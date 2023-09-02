import 'package:flutter/material.dart';
import 'package:mini_project/screen/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
