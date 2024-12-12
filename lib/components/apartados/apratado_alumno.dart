import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leapp/overlays/overlay_alumno.dart';

class ApartadoAlumno extends StatelessWidget {
  const ApartadoAlumno({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.0.w, vertical: 18.0.h),
      child: GestureDetector(
        onTap: () {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return const Dialog(
                backgroundColor: Colors.transparent,
                child: OverlayAlumno()
              );
            },
          );
        },
        child: Container(
          width: double.maxFinite,
          height: 200.0.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 6),
                blurRadius: 40.0
              )
            ]
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 22.0.w, vertical: 18.0.h),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 80.0.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 130.0.w,
                        height: 50.0.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0.r),
                            topRight: Radius.circular(25.0.r)
                          )
                        ),
                        child: Center(child: Text('Curso', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0.sp))),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 30.0.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0.r),
                            bottomLeft: Radius.circular(50.0.r),
                            bottomRight: Radius.circular(50.0.r)
                          )
                        ),
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.h),
                          child: Wrap(
                            children: [
                              Container(
                                width: 360.0.w,
                                height: 20.0.h,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(88, 204, 2, 1),
                                  borderRadius: BorderRadius.circular(50.0.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromRGBO(88, 204, 2, 1).withOpacity(0.2),
                                      offset: const Offset(0, 5),
                                      blurRadius: 10.0,
                                      spreadRadius: 3.0
                                    )
                                  ]
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(right: 22.0.w, top: 18.0.h,
                child: Container(
                  width: 80.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(218, 224, 240, 1),
                    borderRadius: BorderRadius.circular(50.0.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 12.0.w,
                        height: 12.0.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(126, 132, 148, 1),
                          borderRadius: BorderRadius.circular(50.0.r)
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Container(
                          width: 12.0.w,
                          height: 12.0.w,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(126, 132, 148, 1),
                            borderRadius: BorderRadius.circular(50.0.r)
                          ),
                        ),
                      ),
                      Container(
                        width: 12.0.w,
                        height: 12.0.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(126, 132, 148, 1),
                          borderRadius: BorderRadius.circular(50.0.r)
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Positioned(left: 35.0.w, top: 18.0.h,
                child: SizedBox(
                  child: Wrap(
                    spacing: 35.0.dm,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        width: 110.0.w,
                        height: 110.0.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0.r),
                        ),
                        child: Center(child: Image(image: const AssetImage('assets/img/FotoPerfilAlumno.png'), width: 110.0.w, height: 110.0.w)),
                      ),
                      Text('Nombre Alumno', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0.sp))
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}