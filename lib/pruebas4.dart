import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application/Componentes/Botones/Boton_Cerrar.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';

import 'dart:convert';

import 'package:flutter_application/pruebas5.dart';

class Ejer2 extends StatefulWidget {
  const Ejer2({super.key});

  @override
  State<Ejer2> createState() => _Ejer2State();
}

class _Ejer2State extends State<Ejer2> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    loadJson();
    _controller = PageController(initialPage: 0);
  }

  Map<String, dynamic>? valor;

  Future<Map<String, dynamic>> loadJson() async {
    // Cargar el contenido del archivo JSON
    String jsonString =
        await rootBundle.loadString('assets/jsons/bancoDePalabras.json');
    // Parsear el JSON en un Map
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    //print(jsonMap);
    setState(() {
      valor = jsonMap;
    });
    return jsonMap;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: valor?.length,
        itemBuilder: (context, index) {
          //var item = valor?[index.toString()];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BotonCerrar(onTap: () {}),
                    Text('BARRA DE PROGRESO $index / ${valor?.length}'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                MyWidget(rutaImagen: valor?[index.toString()]['imagen'] ?? 'no llego'), //YA LLEGO HABIA QUE AGREGAR .TOSTRING
                //Text('${valor?[index.toString()]['imagen']}'), //NO ME LLEGA LA RUTA :/
                SizedBox(
                  height: 50,
                ),
                BotonSiguiente(onPressed: () {})
              ],
            ),
          );
        },
      ),
    );
  }
}
