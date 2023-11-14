import 'package:flutter/material.dart';
import 'package:recording/view/audio/audio_view.dart';

import 'component/home_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeButton(title: 'Video', onPress: () {}),
            const SizedBox(height: 15),
            HomeButton(
                title: 'Audio',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AudioView()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
