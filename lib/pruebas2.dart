import 'dart:async';
import 'package:flutter/material.dart';

class Pruebas2 extends StatefulWidget {
  const Pruebas2({super.key});

  @override
  State<Pruebas2> createState() => _Pruebas2State();
}

class _Pruebas2State extends State<Pruebas2> with SingleTickerProviderStateMixin{

  late final AnimationController controlador;
  late final Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    controlador = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    );

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.white,
    ).animate(controlador);

    controlador.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 18.0),
      child: GestureDetector(
        onTap: () {
          
        },
        
      ),
    );
  }
}