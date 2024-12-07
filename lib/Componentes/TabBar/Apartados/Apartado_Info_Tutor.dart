import 'dart:async';
import 'package:flutter/material.dart';

class ApartadoInfoTutor extends StatefulWidget {
  const ApartadoInfoTutor({super.key});

  @override
  State<ApartadoInfoTutor> createState() => _ApartadoInfoTutorState();
}

class _ApartadoInfoTutorState extends State<ApartadoInfoTutor> {

  int totalAlumnos = 0;
  late Timer temporizador;

  @override
  void initState() {
    super.initState();
    temporizador = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (totalAlumnos < 30) {
          totalAlumnos++;
        } else {
          totalAlumnos = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    temporizador.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 402.0,
      height: 124.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(218, 224, 240, 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20.0, right: 22.0),
            child: SizedBox(
              width: 130.0,
              height: 94.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Alumnos', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))),
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
                    child: Center(child: Text('$totalAlumnos', style: const TextStyle(color: Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0))),
                  )
                ],
              ),
            )
          ),
          Padding(padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              width: 210.0,
              height: 94.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Código', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))),
                  Container(
                    width: 210.0,
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
                    child: const Center(child: Text('000000', style: TextStyle(color: Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0))),
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