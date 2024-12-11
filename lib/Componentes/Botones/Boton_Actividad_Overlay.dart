import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotonOverlatActividad extends StatelessWidget {

  final VoidCallback onPressed;
  final Color colorBoton;

  const BotonOverlatActividad({
    required this.onPressed,
    required this.colorBoton
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(width: 350.0.w, height: 80.0.h,
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(50.0.r), 
          boxShadow: [
            BoxShadow(
              color: colorBoton.withOpacity(0.4), 
              offset: const Offset(0.0, 10.0), 
              blurRadius: 40.0,
              spreadRadius: 3.0
            )
          ]
        ),
        child: Center(
          child: Text(
            'Comenzar', 
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