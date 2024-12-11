import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_ilustracion.dart';
import 'package:leapp/screens/test/espacioPalabras.dart';

class LeccionA extends StatefulWidget {
  final String palabra;
  final String? rutaImagen;
  final String rutaSonido;
  final VoidCallback onTresClicks; // CALLBACK PARA LOS 3 CLICK PARA QUE SE ACTIVE EL BOTON SIGUIENTE
  const LeccionA(
      {required this.palabra,
      required this.rutaImagen,
      required this.rutaSonido,
      required this.onTresClicks,
      super.key});

  @override
  State<LeccionA> createState() => _LeccionAState();
}

class _LeccionAState extends State<LeccionA> {
  final player = AudioPlayer();
  int contadorClicks = 0;

  //CONTADOR DE CLICKS
  void _handleOnTap() {
    contadorClicks++;
    if (contadorClicks == 3) {
      widget.onTresClicks();//
      contadorClicks = 0; // Reiniciar el contador
    }
  }

  @override
  Widget build(BuildContext context) {
    bool tieneMasDeUnaLetra = widget.palabra.length > 1;//EVALUAR SI TIENE MAS DE UNA LETRA, PARA SEPARAR LETRAS DE PALABRAS
    return SizedBox(
      width: 500,
      child: Column(children: [
        BotonIlustracion(
          onTap: () async {
            await player.play(AssetSource(widget.rutaSonido));
            _handleOnTap();
          },
          imagen: widget.rutaImagen,
          
        ),
        if (tieneMasDeUnaLetra)//CONDICION SI TIENEMAS DE UNA LETRA ES DECIR ES UNA PALABRA SE MUESTRA EL TEXTO
          EspacioPalabras(palabra: widget.palabra),
      ]),
    );
  }
}
