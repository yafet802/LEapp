import "package:flutter/material.dart";

class BotonSiguiente extends StatelessWidget {

  final VoidCallback onPressed;

  BotonSiguiente({
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(width: 350, height: 80.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(125, 162, 255, 1),
          borderRadius: BorderRadius.circular(50.0), 
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(125, 162, 255, 0.4), 
              offset: Offset(0.0, 10.0), 
              blurRadius: 40.0,
              spreadRadius: 3.0
            )
          ]
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(right: 10, child: Icon(Icons.arrow_circle_right_rounded, color: Colors.white.withOpacity(0.7), size: 60)),
            const Text('Siguiente', style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 28.0, color: Colors.white)),
          ],
        )
      ),
    );
  }
}