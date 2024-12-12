import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotonInfo extends StatelessWidget {

  final GestureCancelCallback onTap;

  const BotonInfo({
    super.key, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 51.13.w,
        height: 51.13.w,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(125, 162, 255, 1),
          borderRadius: BorderRadius.circular(100.0.r),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(125, 162, 255, 1).withOpacity(0.32),
              offset: const Offset(0, 16),
              blurRadius: 40.0
            )
          ]
        ),
        child: Center(
          child: Icon(Icons.info_rounded, size: 31.13.dm, color: Colors.white),
        ),
      ),
    );
  }
}