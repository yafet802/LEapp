import 'package:flutter/material.dart';

class Boton_Accion extends StatelessWidget {
  
  final IconData iconoBoton;
  final Color iconoColor;
  final Color colorBoton;
  final GestureTapCallback onTap;

  Boton_Accion({
    required this.iconoBoton,
    required this.iconoColor,
    required this.colorBoton,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 74.0, height: 74.0,
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(100.0), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08), 
              offset: const Offset(0.0, 6.0), 
              blurRadius: 20.0,
            )
          ]
        ),
        child: Icon(iconoBoton, size: 40.0, color: iconoColor)
      ),
    );
  }
}

