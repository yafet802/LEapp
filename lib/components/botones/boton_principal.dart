import "package:flutter/material.dart";

class BotonPrincipal extends StatelessWidget {
  
  final String nombreBoton;
  final VoidCallback onPressed;

  const BotonPrincipal({
    required this.nombreBoton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(width: 350.0, height: 80.0,
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
              fontSize: 32.0, 
              color: Colors.white
            )
          )
        )
      ),
    );
  }
}