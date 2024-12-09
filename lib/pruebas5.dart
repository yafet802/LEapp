import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application/Componentes/Ejercicios/Boton_Ilustracion.dart';
import 'BotonOpcion.dart';

class MyWidget extends StatefulWidget {
  final String? rutaImagen;
  MyWidget({required this.rutaImagen, super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      child: Column(children: [
        BotonIlustracion(
          onTap: () {},
          imagen: widget.rutaImagen,
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          color: Colors.grey[400], // Color del divider
          height: 20, // Espacio vertical que ocupa el divider
          thickness: 2, // Grosor del divider
          indent: 10, // Espacio antes del divider
          endIndent: 10, // Espacio después del divider
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonOpcion(
                  habilitado: false,
                  index: 0,
                  letra: 'a',
                  onTap: (p0, p1) {},
                ),
                SizedBox(
                  width: 20,
                ),
                BotonOpcion(
                  habilitado: false,
                  index: 1,
                  letra: 'e',
                  onTap: (p0, p1) {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonOpcion(
                  habilitado: false,
                  index: 2,
                  letra: 'i',
                  onTap: (p0, p1) {},
                ),
                SizedBox(
                  width: 20,
                ),
                BotonOpcion(
                  habilitado: false,
                  index: 3,
                  letra: 'o',
                  onTap: (p0, p1) {},
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
