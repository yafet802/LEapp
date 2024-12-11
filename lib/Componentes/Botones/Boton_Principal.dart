import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class BotonPrincipal extends StatelessWidget {
  
  final String nombreBoton;
  final VoidCallback onPressed;

  BotonPrincipal({
    required this.nombreBoton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(width: 350.0.w, height: 80.0.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(125, 162, 255, 1),
          borderRadius: BorderRadius.circular(50.0.r), 
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(125, 162, 255, 0.4), 
              offset: Offset(0.0, 10.0), 
              blurRadius: 40.0,
              spreadRadius: 3.0
            )
          ]
        ),
        child: Center(
          child: Text(
            nombreBoton, 
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold', 
              fontSize: 32.0.sp, 
              color: Colors.white
            )
          )
        )
      ),
    );
  }
}