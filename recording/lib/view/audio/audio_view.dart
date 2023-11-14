import 'package:flutter/material.dart';
import 'component/record_audio.dart';

class AudioView extends StatefulWidget {
  const AudioView({super.key});

  @override
  State<AudioView> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Audio Recording"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // PlayAudio(),
            RecordAudio(),
            // GestureDetector(
            //   onTap: () async {
            //     appDocumentsDir = await getApplicationDocumentsDirectory();
            //     print(appDocumentsDir);
            //   },
            //   child: Text("press"),
            // ),
          ],
        ),
      ),
    );
  }
}
