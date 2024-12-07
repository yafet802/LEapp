import 'package:flutter/material.dart';

class Prueba3 extends StatelessWidget {

  final String word;

  const Prueba3({required this.word});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildLetterContainers(),
    );
  }

  List<Widget> _buildLetterContainers() {
    return word.split('').map((letter) {
      return Container(
        margin: EdgeInsets.all(8.0), // Espacio entre los contenedores
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
        child: Text(
          letter,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      );
    }).toList();
  }
}