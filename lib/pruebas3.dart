import 'package:flutter/material.dart';

class BotonIlustracion2 extends StatefulWidget {

  final GestureTapCallback onTap;
  String? imagen;
  String? letra;

  BotonIlustracion2({
    required this.onTap,
    this.imagen,
    this.letra
  });

  @override
  State<BotonIlustracion2> createState() => _BotonIlustracion2State();
}

class _BotonIlustracion2State extends State<BotonIlustracion2> with SingleTickerProviderStateMixin{

    double botonEscala = 1;
  bool presionado = false;

  late final AnimationController controlador;
  late final Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    controlador = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    );

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.white,
    ).animate(controlador);

    controlador.addListener(() {
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
      onTap: () {
        setState(() {
          if (!presionado) {
            iniciarAnimacion();
          } else {
            reversaAnimacion();
          }
          presionado = !presionado;
        });
      },
      child: Transform.scale(
        scale: botonEscala,
        child: SizedBox(
          width: 550.0,
          height: 550.0,
          child: Container(
                width: 550.0,
                height: 550.0,
                decoration: BoxDecoration(
                  color: colorAnimation.value,
                  borderRadius: BorderRadius.circular(50.0),
                  
                ),
              ),
        ),
      ),
    );
  }

  void iniciarAnimacion() {
    controlador.forward();
  }

  void reversaAnimacion() {
    controlador.reverse();
  }

}