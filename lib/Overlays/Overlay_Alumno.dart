import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Cerrar.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Principal.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_application/Pantallas/Perfiles/Perfil_Alumno.dart';

class OverlayAlumno extends StatefulWidget {
  const OverlayAlumno({super.key});

  @override
  State<OverlayAlumno> createState() => _OverlayAlumnoState();
}

class _OverlayAlumnoState extends State<OverlayAlumno> {
  
  List<Letra> listaActual = [];
  int indiceActual = 0;

  @override
  void initState() {
    _iniciarReproduccionAutomatica();
    super.initState();
  }

  void _iniciarReproduccionAutomatica() {
    listaActual = [...vocales, ...consonantes, ...silabas, ...silabasCompuestas];
    _reproducirLetra();
  }

  void _reproducirLetra() {
    if (indiceActual < listaActual.length) {
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          indiceActual++;
          _reproducirLetra(); 
        });
      });
    } else {
      indiceActual = 0;
      _iniciarReproduccionAutomatica();
    }
  }

  String _getTipoLetra(Letra letra) {
    if (vocales.contains(letra)) {
      return 'Vocales';
    } else if (consonantes.contains(letra)) {
      return 'Consonantes';
    } else if (silabas.contains(letra)) {
      return 'Sílabas';
    } else if (silabasCompuestas.contains(letra)) {
      return 'Compuestas';
    } else {
      return 'Desconocida';
    }
  }

  @override
  void dispose() {
    _iniciarReproduccionAutomatica();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540.0,
      height: 562.0,
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
            ),
          ),
          Positioned(top: 71.0,
            child: Container(
              width: 540.0,
              height: 350.0,
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
              const Padding(padding: EdgeInsets.only(top: 9.0, bottom: 31.0),
                child: Image(image: AssetImage('assets/img/FotoPerfilAlumno.png'), width: 123.0, height: 123.0),
              ),
              const Text('Nombre Alumno', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0)),
              const Padding(padding: EdgeInsets.only(top: 22.0, bottom: 35.0),
                child: Text('Fase del curso en la\nque se encuentra:', textAlign: TextAlign.center, style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0)),
              ),
              Container(
                width: 400.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(218, 224, 240, 1),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 35.0), child: Text('${_getTipoLetra(listaActual[indiceActual])}', style: const TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(padding: const EdgeInsets.only(right: 5.0, left: 64.0),
                          child: Container(
                            width: 130.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: listaActual[indiceActual].colorHabilitado,
                              borderRadius: BorderRadius.circular(50.0),
                              boxShadow: [
                                BoxShadow(
                                  color: listaActual[indiceActual].colorHabilitado.withOpacity(0.2),
                                  offset: const Offset(0, 5),
                                  blurRadius: 10.0,
                                  spreadRadius: 3
                                )
                              ]
                            ),
                            child: Center(child: Text('${listaActual[indiceActual].letra}', style: const TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 38.0))),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ),
              Padding(padding: const EdgeInsets.only(top: 56.0),
                child: BotonPrincipal(nombreBoton: 'Inspeccionar', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PerfilAlumno()));})
              )
            ],
          ),
          Positioned(top: 83.0, right:  10.0, child: BotonCerrar(onTap: () {Navigator.pop(context);}))
        ],
      ),
    );
  }
}