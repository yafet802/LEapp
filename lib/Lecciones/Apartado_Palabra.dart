import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApartadoPalabra extends StatefulWidget {

  final String palabra;

  const ApartadoPalabra({
    super.key,
    required this.palabra
  });

  @override
  State<ApartadoPalabra> createState() => _ApartadoPalabraState();
}

class _ApartadoPalabraState extends State<ApartadoPalabra> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 138.0.w),
      child: Container(
        width: double.maxFinite,
        height: 120.0.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(30.0.r)
        ),
        child: Padding(padding: EdgeInsets.all(20.0.dg),
          child: Container(
            width: double.maxFinite,
            height: 100.0.h,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(236, 241, 255, 1),
              borderRadius: BorderRadius.circular(20.0.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 5),
                  blurRadius: 10.0,
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Center(child: Text(widget.palabra, style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 64.0.sp, letterSpacing: 25.0.w))),
          ),
        ),
      ),
    );
  }
}