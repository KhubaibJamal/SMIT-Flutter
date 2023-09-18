import 'package:flutter/material.dart';
import 'package:mini_project/screen/profile/component/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
      ),
      body: const Body(),
    );
  }
}
