import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_ilustracion.dart';
import 'package:leapp/components/botones/boton_respuesta.dart';
import 'package:leapp/components/botones/boton_siguiente.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  
  List<String> respuesta = [];
  List<String> palabras = ['Las', 'palabras', 'para', 'responder'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          _header(), 
          _body(), 
          _footer(), 
        ],
      ),
    );
  }

  Widget _header() {
    return const Row(
      children: [
        Icon(Icons.arrow_circle_left, size: 70),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(30),
          child: LinearProgressIndicator(
            minHeight: 7,
            color: Color.fromRGBO(125, 162, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        )),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("1/10", style: TextStyle(fontSize: 20)),
        )
      ],
    );
  }

  _agregar(String palabra) {
    setState(() {  
      palabras.remove(palabra);
      respuesta.add(palabra);
    });
  }

  _remover(String palabra){
    setState(() {  
      respuesta.remove(palabra);
      palabras.add(palabra);
    });
  }

  Widget _body() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                height: 400, width: 400, child: BotonIlustracion(onTap: () {})),
            const SizedBox(height: 150),
            Row(
              children: List.generate(
                respuesta.length, 
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: BotonRespuesta(
                      palabra: respuesta[index], 
                      onTap: (p0) => _remover(p0),
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1, thickness: 5, color: Colors.black45),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: List.generate(
                  palabras.length, 
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: BotonRespuesta(
                        palabra: palabras[index], 
                        onTap: (p0) => _agregar(p0),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _footer() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: BotonSiguiente(
        onPressed: () {},
      ),
    );
  }
}
