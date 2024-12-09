import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';


class reproducirSonido extends StatefulWidget {
  final String soundPath;
  const reproducirSonido({required this.soundPath, super.key});

  @override
  State<reproducirSonido> createState() => _reproducirSonidoState();
}

class _reproducirSonidoState extends State<reproducirSonido> {
  //final  player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.volume_up),
      onPressed: () {
        playSound();
      },
    );
  }

  Future<void> playSound() async{
    //await player.play(AssetSource(widget.soundPath));
  }
}