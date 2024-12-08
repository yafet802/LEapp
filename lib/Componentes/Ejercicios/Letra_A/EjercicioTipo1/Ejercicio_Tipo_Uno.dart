import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Ejercicios/Boton_Ilustracion.dart';
import 'package:flutter_application/Componentes/Ejercicios/Letra_A/EjercicioTipo1/Boton_Opcion.dart';

class EjercioTipoUno extends StatefulWidget {

  const EjercioTipoUno({
    super.key,
  });

  @override
  State<EjercioTipoUno> createState() => _EjercioTipoUnoState();
}

class _EjercioTipoUnoState extends State<EjercioTipoUno> {

  bool uno = false;
  bool dos = false;
  bool tres = false;
  bool cuatro = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BotonIlustracion(onTap: () {}, imagen: 'assets/img/imagenA/imagen/agua.png'),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Divider(color: Color.fromARGB(255, 212, 212, 212)),
        ),
        Wrap(
          children: [
            SizedBox(
              width: 160.0,
              height: 160.0,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Placeholder()
                  )
                ],
              ),
            ),
            SizedBox(
              width: 160.0,
              height: 160.0,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Placeholder()
                  )
                ],
              ),
            ),
            SizedBox(
              width: 160.0,
              height: 160.0,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Placeholder()
                  )
                ],
              ),
            ),
            SizedBox(
              width: 160.0,
              height: 160.0,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Placeholder()
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}



class BotonOpcion extends StatefulWidget {

  final GestureTapCallback onTap;
  final String letra;

  const BotonOpcion({
    required this.onTap,
    required this.letra
  });

  @override
  State<BotonOpcion> createState() => _BotonOpcionState();
}

class _BotonOpcionState extends State<BotonOpcion> with SingleTickerProviderStateMixin{

  double botonEscala = 1;

  late final AnimationController controlador;

  @override
  void initState() {
    super.initState();
    controlador = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    botonEscala = 1 + controlador.value;

    return GestureDetector(
      onTapDown: (details) => iniciarAnimacion(),
      onTapUp: (details) {
        reversaAnimacion();
        widget.onTap.call();
      },
      onTapCancel: () => reversaAnimacion(),
      child: Transform.scale(
        scale: botonEscala,
        child: SizedBox(
          width: 160.0,
          height: 160.0,
          child: Container(
            width: 160.0,
            height: 160.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                 BoxShadow(
                  color: const Color.fromRGBO(127, 126, 148, 1).withOpacity(0.16),
                  offset: const Offset(0, 16),
                  blurRadius: 40.0,
                )
              ]
            ),
            child: Center(
              child: Text(widget.letra, style: const TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 74.0))
            )
          ),
        ),
      ),
    );
  }

  void iniciarAnimacion () {
    controlador.forward();
  }

  void reversaAnimacion () {
    controlador.reverse();
  }

}


/*
class EjercioTipoUno extends StatefulWidget {

  final String respuesta;

  const EjercioTipoUno({
    super.key,
    required this.respuesta
  });

  @override
  State<EjercioTipoUno> createState() => _EjercioTipoUnoState();
}

class _EjercioTipoUnoState extends State<EjercioTipoUno> {

  List<String> opciones = ['a','e','i','o','u'];



  bool uno = false;
  bool dos = false;
  bool tres = false;
  bool cuatro = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BotonIlustracion(onTap: () {}, imagen: 'assets/img/imagenA/imagen/agua.png'),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Divider(color: const Color.fromARGB(255, 212, 212, 212)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BotonOpcion(letra: 'a', habilitado: uno, onTap: () {
                  setState(() {
                    if (uno == false) {
                      uno = true;
                      dos = false;
                      tres = false;
                      cuatro = false;
                    } else {
                      uno = false;
                    }
                  });
                },),
                SizedBox(width: 20.0),
                BotonOpcion(letra: 'o', habilitado: dos, onTap: () {
                  setState(() {
                    if (dos == false) {
                      dos = true;
                      uno = false;
                      tres = false;
                      cuatro = false;
                    } else {
                      dos = false;
                    }
                  });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BotonOpcion(letra: 'i', habilitado: tres, onTap: () {
                  setState(() {
                    if (tres == false) {
                      tres = true;
                      dos = false;
                      uno = false;
                      cuatro = false;
                    } else {
                      tres = false;
                    }
                  });
                }),
                SizedBox(width: 20.0),
                BotonOpcion(letra: 'e', habilitado: cuatro, onTap: () {
                  setState(() {
                    if (cuatro == false) {
                      cuatro = true;
                      dos = false;
                      tres = false;
                      uno = false;
                    } else {
                      cuatro = false;
                    }
                  });
                }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
*/
