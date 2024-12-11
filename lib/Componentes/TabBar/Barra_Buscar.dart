import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite, 
      height: 80.0.h,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50.0.r),
      ),
      child: SearchBar(
        elevation: const MaterialStatePropertyAll<double>(0.0),
        surfaceTintColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        overlayColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 35.0.w)),
        leading: Padding(
          padding: EdgeInsets.only(left: 35.0.w),
            child: Image(image: const AssetImage('assets/img/buscarIcono.png'), width: 32.0.w, height: 32.0.w),
          ),
        hintStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 28.0.sp)),
        hintText: 'Buscar Alumno',
      ),
    );
  }
}