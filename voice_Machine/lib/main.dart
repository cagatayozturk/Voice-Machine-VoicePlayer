import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VoicePage(),
    );
  }
}

class VoicePage extends StatefulWidget {
  const VoicePage({super.key});

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  final player = AudioPlayer();

  void PlayVoice(String path) {
    player.play(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                buildVoiceButton("how.wav", Colors.purple),
                buildVoiceButton("bongo.wav", Colors.yellow)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildVoiceButton("bip.wav", Colors.greenAccent),
                buildVoiceButton("ridebel.wav", Colors.pink)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildVoiceButton("clap1.wav", Colors.red),
                buildVoiceButton("crash.wav", Colors.white70)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildVoiceButton("clap3.wav", Colors.blueAccent),
                buildVoiceButton("clap2.wav", Colors.brown)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildVoiceButton("woo.wav", Colors.amber),
                buildVoiceButton("oobah.wav", Colors.blueGrey)
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded buildVoiceButton(String path, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          PlayVoice(path);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
