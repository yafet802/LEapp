import 'package:flutter/material.dart';

class BotonPerfil extends StatelessWidget {

  final String nombreBoton;
  final GestureTapCallback onTap;

  const BotonPerfil({
    required this.nombreBoton,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 300.0, height: 60.0,
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
        child: Center(
          child: Text(
            nombreBoton, 
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold', 
              fontSize: 24.0, 
              color: Colors.white
            )
          )
        )
      ),
    );
  }
}