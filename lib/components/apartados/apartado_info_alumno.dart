import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leapp/letras/letras.dart';

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
      width: 578.0.w,
      height: 124.0.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(218, 224, 240, 1),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20.0.w),
            child: SizedBox(
              width: 130.w,
              height: 94.0.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8.0.h),
                    child: Text('Curso', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                  Container(
                    width: 130.0.w,
                    height: 49.5.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 241, 255, 1),
                      borderRadius: BorderRadius.circular(50.0.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: const Offset(0, 5),
                          blurRadius: 10.0,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: Center(child: Text('$cursoPorcentaje%', style: TextStyle(color: const Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                  )
                ],
              ),
            )
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 22.0.sp),
            child: SizedBox(
              width: 210.0.w,
              height: 94.0.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8.0.h),
                  child: Text('Fase', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                    Container(
                      width: 210.0.w,
                      height: 49.5.h,
                      decoration: BoxDecoration(
                        color: listaActual[indiceActual].colorHabilitado,
                        borderRadius: BorderRadius.circular(50.0.r),
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
                          style: TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold' , fontSize: 23.0.sp)
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Padding(padding: EdgeInsets.only(right: 20.0.w),
              child: SizedBox(
                width: 154.0.w,
                height: 94.0.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 8.0.h),
                    child: Text('Ultima Act.', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                    Container(
                      width: 134.0.w,
                      height: 49.5.h,
                      decoration: BoxDecoration(
                        color: listaActual[indiceActual].colorHabilitado,
                        borderRadius: BorderRadius.circular(50.0.r),
                        boxShadow: [
                          BoxShadow(
                            color: listaActual[indiceActual].colorHabilitado.withOpacity(0.2),
                            offset: const Offset(0, 5),
                            blurRadius: 10.0,
                            spreadRadius: 3
                          )
                        ]
                      ),
                      child: Center(child: Text('${listaActual[indiceActual].letra}', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
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