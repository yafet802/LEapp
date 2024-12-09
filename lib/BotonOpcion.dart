import 'package:flutter/material.dart';

class BotonOpcion extends StatelessWidget {

  final int index;
  final Function(int, String) onTap;
  final String letra;
  bool habilitado;

  BotonOpcion({
    required this.index,
    required this.onTap,
    required this.letra,
    required this.habilitado
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index, letra);
      },
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: BoxDecoration(
          color: habilitado 
            ? const Color.fromRGBO(125, 162, 255, 1)
            : Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: habilitado 
                ? const Color.fromRGBO(126, 132, 148, 1).withOpacity(0.16)
                : const Color.fromRGBO(125, 162, 255, 1).withOpacity(0.32),
                offset: const Offset(0, 16),
              blurRadius: 40.0
            )
          ]
        ),
        child: Center(
          child: Text(letra, 
            style: TextStyle(
              color: habilitado 
                ? Colors.white 
                : Colors.black,
              fontFamily: 'Poppins-SemiBold',
              fontSize: 96.0
            )
          ),
        ),
      ),
    );
  }
}