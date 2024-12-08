import 'package:flutter/material.dart';

class BotonOpcion extends StatelessWidget {

  final GestureTapCallback onTap;
  final String letra;
  bool habilitado;

  BotonOpcion({
    required this.onTap,
    required this.letra,
    required this.habilitado
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: BoxDecoration(
          color: habilitado == false ? Colors.white : const Color.fromRGBO(125, 162, 255, 1),
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: habilitado == false ? const Color.fromRGBO(126, 132, 148, 1).withOpacity(0.16) : const Color.fromRGBO(125, 162, 255, 1).withOpacity(0.32),
              offset: const Offset(0, 16),
              blurRadius: 40.0
            )
          ]
        ),
        child: Center(
          child: Text(letra, 
            style: TextStyle(
              color: habilitado == false ? Colors.black : Colors.white,
              fontFamily: 'Poppins-SemiBold',
              fontSize: 96.0
            )
          ),
        ),
      ),
    );
  }
}