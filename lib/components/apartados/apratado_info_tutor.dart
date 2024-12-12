import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApartadoInfoTutor extends StatefulWidget {
  const ApartadoInfoTutor({super.key});

  @override
  State<ApartadoInfoTutor> createState() => _ApartadoInfoTutorState();
}

class _ApartadoInfoTutorState extends State<ApartadoInfoTutor> {

  int totalAlumnos = 0;
  late Timer temporizador;

  @override
  void initState() {
    super.initState();
    temporizador = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (totalAlumnos < 30) {
          totalAlumnos++;
        } else {
          totalAlumnos = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    temporizador.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 402.0.w,
      height: 124.0.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(218, 224, 240, 1),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20.0.w, right: 22.0.w),
            child: SizedBox(
              width: 130.0.w,
              height: 94.0.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8.0.h),
                    child: Text('Alumnos', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                  Container(
                    width: 130.0.w,
                    height: 50.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 241, 255, 1),
                      borderRadius: BorderRadius.circular(50.0.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: const Offset(0, 5),
                          blurRadius: 10.0,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: Center(child: Text('$totalAlumnos', style: TextStyle(color: const Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                  )
                ],
              ),
            )
          ),
          Padding(padding: EdgeInsets.only(right: 20.0.w),
            child: SizedBox(
              width: 210.0.w,
              height: 94.0.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8.0.h),
                    child: Text('Código', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))),
                  Container(
                    width: 210.0.w,
                    height: 50.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 241, 255, 1),
                      borderRadius: BorderRadius.circular(50.0.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: const Offset(0, 5),
                          blurRadius: 10.0,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: Center(child: Text('000000', style: TextStyle(color: const Color.fromRGBO(125, 162, 255, 1), fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                  )
                ],
              ),
            )
          ),           
        ],
      ),
    );
  }
}