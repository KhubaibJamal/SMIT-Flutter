// import 'dart:io';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// import 'package:path_provider/path_provider.dart';
// import 'package:record/record.dart';

// class RecordAudio extends StatefulWidget {
//   const RecordAudio({super.key});

//   @override
//   State<RecordAudio> createState() => RecordAudioState();
// }

// class RecordAudioState extends State<RecordAudio> {
//   // for internal directory
//   late Directory appDocumentsDir;
//   // for recording audio
//   final record = AudioRecorder();

//   // play audio
//   final player = AudioPlayer();
//   // check if recording start or not
//   bool isRecording = false;
//   // save audio path
//   String audioPath = "";

//   // start recording method
//   Future<void> startRecording() async {
//     try {
//       appDocumentsDir = await getApplicationDocumentsDirectory();
//       if (await record.hasPermission()) {
//         await record.start(const RecordConfig(), path: "$appDocumentsDir");
//         setState(() {
//           isRecording = true;
//         });
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   // stop recording method
//   Future<void> stopRecording() async {
//     try {
//       String? path = await record.stop();
//       setState(() {
//         isRecording = false;
//         audioPath = path!;
//       });
//       print(path);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   // play audio method
//   Future<void> playAudio() async {
//     try {
//       await player.play(UrlSource(audioPath));
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   @override
//   void initState() {
//     record;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     record.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (isRecording) const Text("Recording is progress"),
//         ElevatedButton(
//           // onPressed: () {
//           //   isRecording ? stopRecording() : startRecording();
//           // },
//           onPressed: isRecording ? stopRecording : startRecording,
//           child: isRecording
//               ? const Icon(Icons.stop)
//               : const Icon(Icons.play_arrow),
//         ),
//         SizedBox(height: 25),
//         if (!isRecording)
//           ElevatedButton(
//             onPressed: playAudio,
//             child: const Icon(Icons.play_arrow),
//           ),
//       ],
//     );
//   }
// }

import 'dart:io';

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class RecordAudio extends StatefulWidget {
  const RecordAudio({super.key});

  @override
  State<RecordAudio> createState() => RecordAudioState();
}

class RecordAudioState extends State<RecordAudio> {
  late Directory appDocumentsDir;
  final record = AudioRecorder();
  // final player = AudioPlayer();
  late AudioPlayer player = AudioPlayer();
  bool isRecording = false;
  String audioPath = "";

  Future<void> startRecording() async {
    try {
      appDocumentsDir = await getApplicationDocumentsDirectory();
      if (await record.hasPermission()) {
        String filePath = '${appDocumentsDir.path}/audio_recording.wav';
        await record.start(const RecordConfig(), path: filePath);
        setState(() {
          isRecording = true;
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> stopRecording() async {
    try {
      String? path = await record.stop();
      setState(() {
        isRecording = false;
        audioPath = path ?? "";
      });
      // print("Recording stopped. Path: $audioPath");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> playAudio() async {
    try {
      await player.setFilePath(audioPath);
      // await player.play();
      // Source url = UrlSource(audioPath);
      // await player.play(url);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // player.setFilePath(audioPath);
    player.setAsset('assets/audio/audio1.mp3');
    // print(audioPath);
  }

  @override
  void dispose() {
    record.dispose();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isRecording) const Text("Recording is in progress"),
        ElevatedButton(
          // onPressed: isRecording ? stopRecording : startRecording,
          onPressed: () {
            isRecording ? stopRecording() : startRecording();
            // await player.setFilePath(audioPath);
            print("ISRECORDING:  $isRecording");
          },
          child: isRecording
              ? const Icon(Icons.stop)
              : const Icon(Icons.play_arrow),
        ),
        const SizedBox(height: 25),
        if (!isRecording)
          // ElevatedButton(
          //   onPressed: () {
          //     playAudio();
          //     print(isRecording);
          //     print(audioPath);
          //   },
          //   child: const Icon(Icons.play_arrow),
          // ),
          StreamBuilder<PlayerState>(
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
      ],
    );
  }
}
