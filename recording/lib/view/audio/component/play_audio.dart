import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayAudio extends StatefulWidget {
  const PlayAudio({super.key});

  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {
  late AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    player.setAsset('assets/audio/audio1.mp3');
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<PlayerState>(
        stream: player.playerStateStream,
        builder: (context, snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (processingState == ProcessingState.loading ||
              processingState == ProcessingState.buffering) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              width: 64.0,
              height: 64.0,
              child: const CircularProgressIndicator(),
            );
          } else if (playing != true) {
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 64.0,
              onPressed: player.play,
            );
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
              icon: const Icon(Icons.pause),
              iconSize: 64.0,
              onPressed: player.pause,
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 64.0,
              onPressed: () => player.seek(Duration.zero),
            );
          }
        },
      ),
    );
  }
}
