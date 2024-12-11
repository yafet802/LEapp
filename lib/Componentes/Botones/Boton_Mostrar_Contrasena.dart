import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MostrarContrasena extends StatelessWidget {

  final GestureTapCallback onTap;
  final Color color;

  const MostrarContrasena({
    required this.onTap,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305.0.w,
      height: 35.0.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 14.0.w),
            child: Text('Mostrar Contraseña', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 22.0.sp)),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 35.0.w,
              height: 35.0.w,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(218, 224, 240, 1),
                borderRadius: BorderRadius.circular(100.0.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 6),
                    blurRadius: 40.0
                  )
                ]
              ),
              child: Center(
                child: Container(
                  width: 25.0.w,
                  height: 25.0.w,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(100.0.r),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}