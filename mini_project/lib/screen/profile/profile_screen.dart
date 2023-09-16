import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "More",
        ),
      ),
    );
  }
}
