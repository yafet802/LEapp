import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Ejercicios/Letra_A/EjercicioTipo1/Boton_Opcion.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApartadoPalabra2 extends StatefulWidget {
  final String palabra;

  const ApartadoPalabra2({super.key, required this.palabra});

  @override
  State<ApartadoPalabra2> createState() => _ApartadoPalabra2State();
}

class _ApartadoPalabra2State extends State<ApartadoPalabra2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 63),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 40.0,
        ),
        height: 120.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(30.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  height: 120.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BotonOpcion(onTap: (){}, letra: 'a'),
                      SizedBox(width: 100.0),
                      BotonOpcion(onTap: (){}, letra: 'a'),
                      SizedBox(width: 100.0),
                      BotonOpcion(onTap: (){}, letra: 'a'),
                    ],
                  )
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}