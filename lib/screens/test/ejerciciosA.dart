import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_siguiente.dart';
import 'package:leapp/database/db.dart';
import 'package:leapp/database/palabra.dart';
import 'package:leapp/screens/test/ejercicioA.dart';

class Ejerciciosa extends StatefulWidget {
  const Ejerciciosa({super.key});

  @override
  State<Ejerciciosa> createState() => _EjerciciosaState();
}

class _EjerciciosaState extends State<Ejerciciosa>
    with SingleTickerProviderStateMixin {//para el animation controller
  late PageController _controller;
  //bool opcionSeleccionada = false;
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  ///////
  bool opcionSeleccionada = false;
  bool respuestaCorrecta = false;
  /////
  int contadorCorrectas = 0;

  /////
  int contadorPaginas = 1;


  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _nextPage();

    /////////////////////////
    /////ANIMACION DEL BOTON SIGUIENTE
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(_animationController);
  }

  void _nextPage() {
    if (_controller.hasClients) {
      contadorPaginas++;
      setState(() {
        if (respuestaCorrecta) {
          contadorCorrectas++; // Incrementar el contador solo si la respuesta es correcta y el botón siguiente ha sido presionado
        }
        _controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        opcionSeleccionada = false;
        respuestaCorrecta = false;
        _animationController.reverse();
      });
    } else {
      print('controlador no esta conectado al pageview');
    }
  }

  void _onOpcionSeleccionada(String letraSeleccionada) {
    bool esCorrecta = letraSeleccionada == 'a';
    ///////////////////////
    setState(() {
      opcionSeleccionada = true;
      respuestaCorrecta = esCorrecta;
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    /////////////////////////////
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Widget _ejercicioPalabras() {
    return FutureBuilder(
      future: DB.instance.getAllPalabras("palabras_a"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //si tiene datos
          List<Palabra> palabras = snapshot.data!;
          return palabras.isEmpty
              ? const Center(
                  child: Text('No hay palabras')) //si no hay palabras
              : Column(
                  children: [
                    _header(
                        cantidad: palabras.length, controller: contadorPaginas),
                    //Text('contador respuestas $contadorCorrectas'),
                    Expanded(
                      child: PageView.builder(
                        controller: _controller,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: palabras.length,
                        itemBuilder: (context, index) {
                          //var item = valor?[index.toString()];
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                MyWidget(
                                  rutaImagen: palabras[index].imagen,
                                  rutaSonido: palabras[index].audio,
                                  onOpcionSeleccionada: _onOpcionSeleccionada,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                // if (opcionSeleccionada)
                                //   Text(
                                //     respuestaCorrecta
                                //         ? 'correcto'
                                //         : 'intenta de nuevo',
                                //     style: TextStyle(
                                //         color: respuestaCorrecta
                                //             ? Colors.green
                                //             : Colors.yellow),
                                //   )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: opcionSeleccionada
                          ? SlideTransition(
                              position: _offsetAnimation,
                              child: BotonSiguiente(
                                onPressed: _nextPage,
                              ),
                            )
                          : null,
                    ),
                  ],
                );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _ejercicioPalabras();
  }

  Widget _header({required int cantidad, required int controller}) {
    return Row(
      children: [
        const Icon(Icons.arrow_circle_left, size: 70),
         Expanded(
            child: Padding(
          padding: EdgeInsets.all(30),
          child: LinearProgressIndicator(
            minHeight: 7,
            value: ((controller.toDouble() / cantidad)),
            color: Color.fromRGBO(125, 162, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('$controller / $cantidad',
              style: const TextStyle(fontSize: 20)),
        )
      ],
    );
  }
}
