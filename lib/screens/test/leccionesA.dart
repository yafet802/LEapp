import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_siguiente.dart';
import 'package:leapp/database/db.dart';
import 'package:leapp/database/palabra.dart';
import 'package:leapp/screens/test/leccionA.dart';

class LeccionesA extends StatefulWidget {
  const LeccionesA({super.key});

  @override
  State<LeccionesA> createState() => _LeccionesAState();
}

class _LeccionesAState extends State<LeccionesA>
    with SingleTickerProviderStateMixin {
  //para el animation controller
  late PageController _controller;
  //bool opcionSeleccionada = false;
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation; //ANIMACION DEL BOTON SIGUIENTE

  /////
  int contadorPaginas = 1;

  ///
  bool mostrarBotonSiguiente = false;

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
        _controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        _animationController.reverse();
        mostrarBotonSiguiente = false;
      });
    } else {
      print('controlador no esta conectado al pageview');
    }
  }

  void _handleTresClicks() {
    setState(() {
      mostrarBotonSiguiente = true;
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

  Widget _LeccionesA() {
    return FutureBuilder(
      future: DB.instance.getAllPalabras("palabras_a"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //si tiene datos
          List<Palabra> palabras = snapshot.data!;
          palabras.sort((a, b) =>
              a.palabra.compareTo(b.palabra)); // Ordenar alfabéticamente
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
                                LeccionA(
                                  palabra: palabras[index].palabra,
                                  rutaImagen: palabras[index].imagen,
                                  rutaSonido: palabras[index].audio,
                                  onTresClicks: _handleTresClicks,
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                        height: 100,
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: BotonSiguiente(
                            onPressed: _nextPage,
                          ),
                        )),
                    SizedBox( 
                      height: 20,
                    )
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
    return _LeccionesA();
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
