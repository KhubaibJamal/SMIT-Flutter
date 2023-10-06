import 'package:flutter/material.dart';

class WelcomeBottomImage extends StatelessWidget {
  const WelcomeBottomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.png'),
            scale: 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
