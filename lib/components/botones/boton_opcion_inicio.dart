import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class BotonOpcionInicio extends StatelessWidget {
  
  final Color colorBoton;
  final Color colorSombra;
  final Image logoBoton;

  const BotonOpcionInicio({
    super.key, 
    required this.colorBoton,
    required this.colorSombra,
    required this.logoBoton
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(width: 76.0.w, height: 76.0.w,
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(15.0.r), 
          boxShadow: [
            BoxShadow(
              color: colorSombra.withOpacity(0.25), 
              blurRadius: 10.0,
              spreadRadius: 3.0
            )
          ]
        ),
        child:  Center(child: Image(image: logoBoton.image, width: 41.0.w, height: 41.0.w))
      ),
    );
  }
}