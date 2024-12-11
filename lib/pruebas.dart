import 'package:flutter/material.dart';
import 'package:flutter_application/Pantallas/Curso/Boton_Curso.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_application/Pantallas/Curso/Plantilla_Boton_Curso.dart';

class MyWidgetStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 540,
        height: 9000,
        child: Stack(
          children: List.generate(silabas.length, (index) {
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

            int y = 15 + (index * 180);

            double adjustedLeft = x.toDouble() - 20;
            double adjustedTop = y.toDouble() - 15;

            TipoPlantillaBoton tipo;
             if (index == silabas.length - 1) {
              tipo = TipoPlantillaBoton.noEsquinas;
            } else if (index % 4 == 0) {
              tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
            } else if (index % 4 == 1) {
              tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
            } else if (index % 4 == 2) {
              tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
            } else {
              tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
            }

            return Stack(
              children: [
                Positioned(
                  left: adjustedLeft,
                  top: adjustedTop,
                  child: PlantillaBotonCurso(tipo: tipo),
                ),
                Positioned(
                  left: x.toDouble(),
                  top: y.toDouble(),
                  child: BotonCurso(letra: silabas[index]),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

enum TipoPlantillaBoton {
  esquinaInferiorIzquierda,
  esquinaInferiorDerecha,
  noEsquinas
}

class PlantillaBotonCurso extends StatelessWidget {

  final TipoPlantillaBoton tipo;

  const PlantillaBotonCurso({
    required this.tipo
  });

  @override
  Widget build(BuildContext context) {
    
    switch (tipo){
      case TipoPlantillaBoton.noEsquinas:
        return noEsquinas();
      case TipoPlantillaBoton.esquinaInferiorIzquierda:
        return esquinaInferiorIzquierda();
      case TipoPlantillaBoton.esquinaInferiorDerecha:
        return esquinaInferiorDerecha();
      default:
        return Container();
    }

  }

  Widget noEsquinas() {
    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        children: [
          Container(
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0)
            ),
          ),
        ],
      ),
    );
  }

  Widget esquinaInferiorIzquierda() {
    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        children: [
          Container(
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0)
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(218, 224, 240, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0)
                )
              ),
            )
          )
        ],
      ),
    );
  }

  Widget esquinaInferiorDerecha() {
    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        children: [
          Container(
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0)
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(218, 224, 240, 1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                )
              ),
            )
          )
        ],
      ),
    );
  }
}


