import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_opcion.dart';
import 'package:leapp/screens/inicio/Inicio_Alumno.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BotonOpcion(index: 0, letra: "a", onTap: (p0, p1) {}, habilitado: false,)
      ),
    );
  }
}
