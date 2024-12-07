import 'package:flutter/material.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_application/Overlays/Overlay_Actividad.dart';

class BotonCurso extends StatefulWidget {

  final Letra letra;

  const BotonCurso({
    required this.letra
  });

  @override
  State<BotonCurso> createState() => _BotonCursoState();
}

class _BotonCursoState extends State<BotonCurso> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          if (widget.letra.desbloqueado) {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                child: OverlayActividad(letra: widget.letra),
              );
            },
          );
        } else {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return const Dialog(
                backgroundColor: Colors.transparent,
                child: OverlayActividadBloqueada(),
              );
            },
          );
        }
      },
      child: SizedBox(
        width: 140.0,
        height: 150.0,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0.0,
              child: Container(
                width: 140.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color:  widget.letra.desbloqueado == false ? const Color.fromRGBO(99, 104, 118, 1) : widget.letra.colorHabilitadoSecundario,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(100.0),
                    bottomLeft: Radius.circular(100.0)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: widget.letra.desbloqueado == false ? const Color.fromRGBO(99, 104, 118, 1).withOpacity(0.4) : widget.letra.colorHabilitadoSecundario.withOpacity(0.4),
                      offset: const Offset(0, 10),
                      blurRadius: 20.0,
                      spreadRadius: 3.0
                    )
                  ]
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: widget.letra.desbloqueado == false ? const Color.fromRGBO(126, 132, 148, 1) : widget.letra.colorHabilitado,
                  borderRadius: BorderRadius.circular(100.0)
                ),
                child: Center(child: Text(widget.letra.letra, style: TextStyle(color: widget.letra.desbloqueado == false ? const Color.fromRGBO(229, 242, 250, 1) : Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 60.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}