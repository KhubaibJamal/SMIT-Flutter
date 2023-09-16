import 'package:flutter/material.dart';
import 'package:mini_project/screen/favorite/component/body.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Favorite Products",
        ),
      ),
      body: const Body(),
    );
  }
}
