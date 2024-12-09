import 'package:flutter/material.dart';

class BotonFiltrar extends StatelessWidget {
  
  final GestureTapCallback onTap;

  const BotonFiltrar({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 80.0, height: 80.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(100.0), 
        ),
        child: const Center(child: Image(image: AssetImage('assets/img/filtroIcono.png'), width: 32.0, height: 32.0))
      ),
    );
  }
}