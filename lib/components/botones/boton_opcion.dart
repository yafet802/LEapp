import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotonOpcion extends StatefulWidget {
  final bool habilitado;
  final String letra;
  final Function(int, String) onTap;
  final int index;

  const BotonOpcion({
    super.key,
    required this.habilitado,
    required this.letra,
    required this.onTap,
    required this.index,
  });

  @override
  State<BotonOpcion> createState() => _BotonOpcionState();
}

class _BotonOpcionState extends State<BotonOpcion>
    with SingleTickerProviderStateMixin {
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
    );

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
    botonEscala = 1 - controlador.value;

    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index, widget.letra);
      },
      onTapDown: (details) {
        iniciarAnimacion();
      },
      onTapUp: (details) {
        reversaAnimacion();
      },
      onTapCancel: () => reversaAnimacion(),
      child: Transform.scale(
        scale: botonEscala,
        child: SizedBox(
          width: 160.0.w,
          height: 160.0.w,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 160.0.w,
              height: 160.0.w,
              decoration: BoxDecoration(
                  color: widget.habilitado
                      ? const Color.fromRGBO(125, 162, 255, 1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(50.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: widget.habilitado
                          ? const Color.fromRGBO(125, 162, 255, 1)
                              .withOpacity(0.32)
                          : const Color.fromRGBO(126, 132, 148, 1)
                              .withOpacity(0.16),
                      offset: const Offset(0, 16),
                      blurRadius: 40.0,
                    )
                  ]),
              child: Center(
                  child: Text(widget.letra,
                      style: TextStyle(
                          color:
                              widget.habilitado ? Colors.white : Colors.black,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 74.0.sp)))),
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
