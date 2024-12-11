import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotonIlustracion2 extends StatefulWidget {

  final GestureTapCallback onTap;

  BotonIlustracion2({
    required this.onTap,
  });

  @override
  State<BotonIlustracion2> createState() => _BotonIlustracion2State();
}

class _BotonIlustracion2State extends State<BotonIlustracion2> with SingleTickerProviderStateMixin{

  bool presionado = false;

  late final AnimationController controlador;
  late final Animation<double?> tamanoAnimacion;

  @override
  void initState() {
    super.initState();
    controlador = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
      lowerBound: 0.0,
      upperBound: 1.0,
    );

    tamanoAnimacion = Tween<double>(
      begin: 200.0.h,
      end: 474.0.h,
    ).animate(controlador);

    controlador.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!presionado) {
            iniciarAnimacion();
          } else {
            reversaAnimacion();
          }
          presionado = !presionado;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.0.w, vertical: 18.0.h),
        child: Container(
          width: double.maxFinite,
          height: tamanoAnimacion.value,
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
              
              /*

                ESTADISTICAS

              */

              Positioned(top: 152.0.h, left: 22.0.w, 
                child: Padding(padding: EdgeInsets.only(bottom: 119.0.h),
                    child: AnimatedOpacity(
                      opacity: presionado ? 1.0 : 0.0, 
                      duration: const Duration(milliseconds: 180),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 247.0.w,
                                    height: 43.0.h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(218, 224, 240, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.0.r),
                                        topRight: Radius.circular(25.0.r)
                                      )
                                    ),
                                    child: Align(alignment: Alignment.bottomCenter, child: Text('Completados', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0.sp))),
                                  ),
                                  Container(
                                    width: 332.0.w,
                                    height: 214.0.h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(218, 224, 240, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0.r),
                                        bottomLeft: Radius.circular(20.0.r),
                                        bottomRight: Radius.circular(20.0.r)
                                      )
                                    ),
                                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.0.h),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 284.0.w,
                                              height: 50.0.h,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0.r),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Positioned(left: 26.0.w,
                                                    child: Text('Lecciones', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                  Positioned(right: 29.0.w,
                                                    child: Text('00/00', style: TextStyle(color: Colors.green, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.symmetric(vertical: 12.0.h),
                                              child: Container(
                                                width: 284.0.w,
                                                height: 50.0.h,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(236, 241, 255, 1),
                                                  borderRadius: BorderRadius.circular(50.0.r),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.08),
                                                      offset: const Offset(0, 5),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 3.0
                                                    )
                                                  ]
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Positioned(left: 26.0.w,
                                                      child: Text('Ejercicios', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                    ),
                                                    Positioned(right: 29.0.w,
                                                      child: Text('00/00', style: TextStyle(color: Colors.green, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 284.0.w,
                                              height: 50.0.h,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0.r),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Positioned(left: 26.0.w,
                                                    child: Text('Examen', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                  Positioned(right: 29.0.w,
                                                    child: Text('00/00', style: TextStyle(color: Colors.green, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ],
                          ),  
                        ],
                      ),
                    )
                  ),
              ),


              Positioned(top: 152.0.h, right: 22.0.w, 
                child: Padding(padding: EdgeInsets.only(bottom: 119.0.h),
                    child: AnimatedOpacity(
                      opacity: presionado ? 1.0 : 0.0, 
                      duration: const Duration(milliseconds: 180),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 247.0.w,
                                    height: 43.0.h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(218, 224, 240, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.0.r),
                                        topRight: Radius.circular(25.0.r)
                                      )
                                    ),
                                    child: Align(alignment: Alignment.bottomCenter, child: Text('Calificaciones', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0.sp))),
                                  ),
                                  Container(
                                    width: 332.0.w,
                                    height: 152.0.h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(218, 224, 240, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0.r),
                                        bottomLeft: Radius.circular(20.0.r),
                                        bottomRight: Radius.circular(20.0.r)
                                      )
                                    ),
                                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.0.h),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 284.0.w,
                                              height: 50.0.h,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0.r),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Positioned(left: 26.0.w,
                                                    child: Text('Ultima', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                  Positioned(right: 29.0.w,
                                                    child: Text('000', style: TextStyle(color: Colors.green, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.only(top: 12.0.h),
                                              child: Container(
                                                width: 284.0.w,
                                                height: 50.0.h,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(236, 241, 255, 1),
                                                  borderRadius: BorderRadius.circular(50.0.r),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.08),
                                                      offset: const Offset(0, 5),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 3.0
                                                    )
                                                  ]
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Positioned(left: 26.0.w,
                                                      child: Text('Mejor', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                    ),
                                                    Positioned(right: 29.0.w,
                                                      child: Text('000', style: TextStyle(color: Colors.green, fontFamily: 'Poppins-SemiBold', fontSize: 23.0.sp))
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ],
                          ),  
                        ],
                      ),
                    )
                  ),
              ),
              
              /*

                BARRA DE PROGRESO

              */

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
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                          )
                        ),
                        child: Center(child: Text('00/00', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0.sp))),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 30.0.h,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0)
                          )
                        ),
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.h),
                          child: Wrap(
                            children: [
                              Container(
                                width: 360.0.w,
                                height: 20.0.h,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.green.withOpacity(0.2),
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

              /*

                CANTIDAD REPASADOS

              */

              Positioned(right: 22.0.w, top: 18.0.h,
                child: Container(
                  width: 240.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(218, 224, 240, 1),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Padding(padding: EdgeInsets.only(right: 5.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 19.0.w),
                          child: Text('Repasado', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 20.0.sp)),
                        ),
                        Container(
                          width: 80.0.w,
                          height: 40.0.h,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green.withOpacity(0.2),
                                offset: const Offset(0, 5),
                                blurRadius: 10.0,
                                spreadRadius: 3.0
                              )
                            ]
                          ),
                          child: Center(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              spacing: 4.0.spMax,
                              children: [
                                Icon(Icons.refresh_rounded, color: Colors.white, size: 20.0.dm),
                                Text('00', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 20.0.sp))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),

              /*

                ICONO LETRA // TITULO ACTIVIDAD

              */

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
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100.0.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 15.0,
                              spreadRadius: 3
                            )
                          ]
                        ),
                        child: Center(child: Text('a', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 48.0.sp))),
                      ),
                      Text('Titulo', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0.sp))
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

  void iniciarAnimacion() {
    controlador.forward();
  }

  void reversaAnimacion() {
    controlador.reverse();
  }

}