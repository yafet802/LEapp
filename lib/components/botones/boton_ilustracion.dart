import 'package:flutter/material.dart';

class BotonIlustracion extends StatefulWidget {

  final GestureTapCallback onTap;
  String? imagen;
  String? letra;

  BotonIlustracion({
    required this.onTap,
    this.imagen,
    this.letra
  });

  @override
  State<BotonIlustracion> createState() => _BotonIlustracionState();
}

class _BotonIlustracionState extends State<BotonIlustracion> with SingleTickerProviderStateMixin{

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

    botonEscala = 1 - controlador.value;

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
          width: 550.0,
          height: 550.0,
          child: Stack(
            children: [
              Container(
                width: 550.0,
                height: 550.0,
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
                  child: widget.letra == null ? 
                  Image(image: AssetImage('${widget.imagen}'), width: 440.0, height: 440.0) 
                  : Text('${widget.letra}', style: TextStyle(fontSize: 400.0))
                )
              ),
              Positioned(
                top: 18.0,
                right: 14.0,
                child: Container(
                  width: 74.0,
                  height: 74.0,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(125, 162, 255, 1),
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(125, 162, 255, 1).withOpacity(0.32),
                        offset: const Offset(0, 16),
                        blurRadius: 40.0,
                      )
                    ]
                  ),
                  child: const Center(child: Icon(Icons.volume_up_rounded, color: Colors.white, size: 42)),
                )
              ),
            ],
          )
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