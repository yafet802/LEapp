import 'package:flutter/material.dart';
import 'package:leapp/screens/inicio/inicio_alumno.dart';
import 'package:leapp/screens/registro/escoger_rol.dart';
import 'package:leapp/screens/test/ejerciciosA.dart';
import 'package:leapp/screens/test/leccionA.dart';
import 'package:leapp/screens/test/leccionesA.dart';
import 'package:leapp/screens/test/test1.dart';
import 'package:leapp/screens/test/testBD.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
            body: Center(
                child: ApartadoPrueba(
              habilitado: false,
              index: 0,
              onTap: (p0, p1) {},
              palabra: 'aguacate',
            ))),
      ),
    );
  }
}
