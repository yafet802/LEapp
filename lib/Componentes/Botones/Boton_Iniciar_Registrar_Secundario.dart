import "package:flutter/material.dart";

class BotonInicioRegistroSecundario extends StatelessWidget {

  final VoidCallback onPressed;
  final String descripcion;
  final String accionSecundaria;

  BotonInicioRegistroSecundario({
    required this.onPressed,
    required this.descripcion,
    required this.accionSecundaria
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          descripcion,
          style: const TextStyle(
            color: Color.fromRGBO(126, 132, 148, 1),
            fontFamily: 'Poppins-Medium',
            fontSize: 24.0
          )
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            accionSecundaria,
            style: const TextStyle(
              color: Color.fromRGBO(125, 162, 255, 1),
              fontFamily: 'Poppins-SemiBold',
              fontSize: 32.0
            )
          ),
        )
      ],
    );
  }
}
