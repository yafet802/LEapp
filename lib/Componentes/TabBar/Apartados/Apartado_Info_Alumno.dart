import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application/Letras/Letras.dart';

class ApartadoInfoAlumno extends StatefulWidget {
  const ApartadoInfoAlumno({super.key});

  @override
  State<ApartadoInfoAlumno> createState() => _ApartadoInfoAlumnoState();
}

class _ApartadoInfoAlumnoState extends State<ApartadoInfoAlumno> {

  List<Letra> listaActual = [];
  int indiceActual = 0;
  int cursoPorcentaje = 0;
  late Timer temporizador;

  @override
  void initState() {
    _iniciarReproduccionAutomatica();
    super.initState();
    temporizador = Timer.periodic(const Duration(milliseconds: 250), (timer) {
      setState(() {
        if (cursoPorcentaje < 100) {
          cursoPorcentaje++;
        } else {
          cursoPorcentaje = 0;
        }
      });
    });
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

  @override
  void dispose() {
    temporizador.cancel();
    _iniciarReproduccionAutomatica();
    super.dispose();
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
  Widget build(BuildContext context) {
    return Container(
      width: 578.0,
      height: 124.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(218, 224, 240, 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: 130,
              height: 94.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Curso', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))),
                  Container(
                    width: 130.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 241, 255, 1),
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: const Offset(0, 5),
                          blurRadius: 10.0,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: Center(child: Text('$cursoPorcentaje%', style: const TextStyle(color: Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0))),
                  )
                ],
              ),
            )
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              width: 210.0,
              height: 94.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Fase', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))),
                    Container(
                      width: 210.0,
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
                      child: Center(
                        child: Text(
                          '${_getTipoLetra(listaActual[indiceActual])}', 
                          style: const TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold' , fontSize: 24.0)
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Padding(padding: const EdgeInsets.only(right: 20.0),
              child: SizedBox(
                width: 154.0,
                height: 94.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Ultima Act.', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))),
                    Container(
                      width: 134.0,
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
                      child: Center(child: Text('${listaActual[indiceActual].letra}', style: const TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 24.0))),
                    )
                  ],
                ),
              )
            ),           
          ],
        ),
      );
  }
}