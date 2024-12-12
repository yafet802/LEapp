import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotonFiltrar extends StatelessWidget {
  
  final GestureTapCallback onTap;

  const BotonFiltrar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 80.0.w, height: 80.0.w,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(100.0.r), 
        ),
        child: Center(child: Image(image: const AssetImage('assets/img/filtroIcono.png'), width: 32.0.w, height: 32.0.w))
      ),
    );
  }
}