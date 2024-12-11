import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

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
          style: TextStyle(
            color: const Color.fromRGBO(126, 132, 148, 1),
            fontFamily: 'Poppins-Medium',
            fontSize: 24.0.sp
          )
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            accionSecundaria,
            style: TextStyle(
              color: const Color.fromRGBO(125, 162, 255, 1),
              fontFamily: 'Poppins-SemiBold',
              fontSize: 32.0.sp
            )
          ),
        )
      ],
    );
  }
}
