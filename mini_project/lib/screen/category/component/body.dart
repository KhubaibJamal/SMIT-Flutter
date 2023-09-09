import 'package:flutter/material.dart';
import 'category_card.dart';
import 'header_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeaderContainer(),

          // grid items
          CategoryCardList(),
        ],
      ),
    );
  }
}
