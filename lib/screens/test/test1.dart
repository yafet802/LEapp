import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_opcion.dart';

class ApartadoPrueba extends StatefulWidget {
  final String palabra;
  final bool habilitado;
  final Function(int, String) onTap;
  final int index;
  const ApartadoPrueba(
      {required this.palabra,
      super.key,
      required this.habilitado,
      required this.onTap,
      required this.index});

  @override
  State<ApartadoPrueba> createState() => _ApartadoPruebaState();
}

class _ApartadoPruebaState extends State<ApartadoPrueba> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 63),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 40.0,
        ),
        height: 120.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.none,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: widget.palabra.characters.map((e) {
                      return BotonOpcion(
                          habilitado: widget.habilitado,
                          letra: e,
                          onTap: (p0, p1) => widget.onTap,
                          index: widget.index);
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
