import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarraProgreso extends StatelessWidget {
  const BarraProgreso({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 53.0.w, right: 23.0.w),
      child: Container(
        width: double.maxFinite,
        height: 18.0.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(50.0.r)
        ),
        child: Container(
          width: 0.0,
          height: 18.0.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(125, 162, 255, 1),
            borderRadius: BorderRadius.circular(50.0.r)
          ),
        ),
      ),
    );
  }
}