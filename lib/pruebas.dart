import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Curso.dart';
import 'package:flutter_application/Letras/Letras.dart';

class MyWidgetStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          width: 540,
          height: 9000,
          child: Stack(
            children: List.generate(vocales.length, (index) {
              // Definir las posiciones x
              int x;
              if (index % 4 == 0) {
                x = 200;
              } else if (index % 4 == 1) {
                x = 20;
              } else if (index % 4 == 2) {
                x = 200;
              } else {
                x = 380;
              }
      
              // Calcular la posición y
              int y = 15 + (index * 180);
      
              return Positioned(
                left: x.toDouble(),
                top: y.toDouble(),
                child: BotonCurso(letra: vocales[index])
              );
            })),
          ),
      );
  }
}