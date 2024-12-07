import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Cerrar.dart';
import 'package:flutter_application/Letras/Letras.dart';

class OverlayActividad extends StatefulWidget {

  final Letra letra;

  const OverlayActividad({
    required this.letra
  });

  @override
  State<OverlayActividad> createState() => _OverlayActividadState();
}

class _OverlayActividadState extends State<OverlayActividad> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540.0,
      height: 450.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(bottom: 2.0,
            child: Container(
              width: 540.0,
              height: 140.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 249, 252, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)
                ),
              ),
              child: Center(  
                child: GestureDetector(
                onTap: () {},
                child: Container(width: 350.0, height: 80.0,
                  decoration: BoxDecoration(
                    color: widget.letra.colorHabilitado,
                    borderRadius: BorderRadius.circular(50.0), 
                    boxShadow: [
                      BoxShadow(
                        color: widget.letra.colorHabilitado.withOpacity(0.4), 
                        offset: const Offset(0.0, 10.0), 
                        blurRadius: 40.0,
                        spreadRadius: 3.0
                      )
                    ]
                  ),
                  child: const Center(
                      child: Text(
                        'Comenzar', 
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold', 
                          fontSize: 32.0, 
                          color: Colors.white
                        )
                      )
                    )
                  )
                ),
              ),
            ),
          ),
          Positioned(top: 71.0,
            child: Container(
              width: 540.0,
              height: 240.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 6),
                    blurRadius: 40.0
                  )
                ]
              ),
            ),
          ),
          Container(
            width: 142.0,
            height: 72.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0),
                topRight: Radius.circular(100.0)
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.only(top: 9.0, bottom: 31.0),
                child: Container(
                  width: 123.0,
                  height: 123.0,
                  decoration: BoxDecoration(
                    color: widget.letra.colorHabilitado,
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                        color: widget.letra.colorHabilitado.withOpacity(0.4),
                        offset: const Offset(0, 4),
                        blurRadius: 15.0,
                        spreadRadius: 3.0
                      )
                    ]
                  ),
                  child: Center(child: Text(widget.letra.letra, style: const TextStyle(color: Colors.white, fontFamily: 'Poppins-Semibold', fontSize: 48.0))),
                )
              ),
              const Text('Nombre Actividad', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0)),
              const Padding(padding: EdgeInsets.only(top: 22.0, bottom: 35.0),
                child: Text('Descripcion de la Actividad', textAlign: TextAlign.center, style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0)),
              ),
            ],
          ),
          Positioned(top: 83.0, right:  10.0, child: BotonCerrar(onTap: () {Navigator.pop(context);}))
        ],
      ),
    );
  }
}


class OverlayActividadBloqueada extends StatelessWidget {
  const OverlayActividadBloqueada({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540.0,
      height: 352.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(bottom: 2.0,
            child: Container(
              width: 540.0,
              height: 140.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 249, 252, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)
                ),
              ),
              child: Center(  
                child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 350.0, 
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(128, 132, 148, 1),
                    borderRadius: BorderRadius.circular(50.0), 
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(128, 132, 148, 1).withOpacity(0.4), 
                        offset: const Offset(0.0, 10.0), 
                        blurRadius: 40.0,
                        spreadRadius: 3.0
                      )
                    ]
                  ),
                  child: const Center(
                      child: Text(
                        'Comenzar', 
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold', 
                          fontSize: 32.0, 
                          color: Colors.white
                        )
                      )
                    )
                  )
                ),
              ),
            ),
          ),
          Container(
              width: 540.0,
              height: 212.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 6),
                    blurRadius: 40.0
                  )
                ]
              ),
            ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 42.0),
                child: Text('Titulo Actividad', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0)),
              ),
              Padding(padding: EdgeInsets.only(top: 22.0),
                child: Text('Completa los niveles anteriores\npara habilitar este nivel', textAlign: TextAlign.center, style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0)),
              ),
            ],
          ),
          Positioned(top: 10.0, right:  10.0, child: BotonCerrar(onTap: () {Navigator.pop(context);}))
        ],
      ),
    );
  }
}