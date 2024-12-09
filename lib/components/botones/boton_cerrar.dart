import 'package:flutter/material.dart';

class BotonCerrar extends StatelessWidget {

  final GestureTapCallback onTap;

  const BotonCerrar({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 60.0, height: 60.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(236, 241, 255, 1),
          borderRadius: BorderRadius.circular(100.0), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08), 
              offset: const Offset(0.0, 6.0), 
              blurRadius: 20.0,
            )
          ]
        ),
        child: const Center(child: Image(image: AssetImage('assets/img/cerrarIcono.png'), width: 22.0, height: 22.0))
      ),
    );
  }
}