import 'package:flutter/material.dart';

class BotonRespuesta extends StatelessWidget {
  final String palabra;
  final Function(String) onTap;
  
  const BotonRespuesta({super.key, required this.palabra, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(palabra),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(126, 132, 148, 1).withOpacity(0.3),
                offset: const Offset(0, 16),
                blurRadius: 40
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(palabra, style: const TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}