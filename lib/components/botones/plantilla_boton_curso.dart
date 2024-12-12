import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      width: 180.w,
      height: 180.w,
      child: Stack(
        children: [
          Container(
            width: 180.0.w,
            height: 180.0.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0.r)
            ),
          ),
        ],
      ),
    );
  }

  Widget esquinaInferiorIzquierda() {
    return SizedBox(
      width: 180.w,
      height: 180.w,
      child: Stack(
        children: [
          Container(
            width: 180.0.w,
            height: 180.0.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0.r)
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: 90.0.w,
              height: 90.0.w,
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
      width: 180.w,
      height: 180.w,
      child: Stack(
        children: [
          Container(
            width: 180.0.w,
            height: 180.0.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 224, 240, 1),
              borderRadius: BorderRadius.circular(100.0.r)
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              width: 90.0.w,
              height: 90.0.w,
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