import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leapp/components/botones/boton_cerrar.dart';
import 'package:leapp/letras/letras.dart';

class OverlayActividad extends StatefulWidget {

  final Letra letra;

  const OverlayActividad({
    super.key, 
    required this.letra
  });

  @override
  State<OverlayActividad> createState() => _OverlayActividadState();
}

class _OverlayActividadState extends State<OverlayActividad> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540.0.w,
      height: 450.0.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(bottom: 2.0.h,
            child: Container(
              width: 540.0.w,
              height: 140.0.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(247, 249, 252, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0.r),
                  bottomRight: Radius.circular(25.0.r)
                ),
              ),
              child: Center(  
                child: GestureDetector(
                onTap: () {},
                child: Container(width: 350.0.w, height: 80.0.h,
                  decoration: BoxDecoration(
                    color: widget.letra.colorHabilitado,
                    borderRadius: BorderRadius.circular(50.0.r), 
                    boxShadow: [
                      BoxShadow(
                        color: widget.letra.colorHabilitado.withOpacity(0.4), 
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
                  )
                ),
              ),
            ),
          ),
          Positioned(top: 71.0.h,
            child: Container(
              width: 540.0.w,
              height: 240.0.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0.r),
                  topRight: Radius.circular(25.0.r)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 6),
                    blurRadius: 40.0
                  )
                ]
              ),
            ),
          ),
          Container(
            width: 142.0.w,
            height: 72.0.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0.r),
                topRight: Radius.circular(100.0.r)
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 9.0.h, bottom: 31.0.h),
                child: Container(
                  width: 123.0.w,
                  height: 123.0.w,
                  decoration: BoxDecoration(
                    color: widget.letra.colorHabilitado,
                    borderRadius: BorderRadius.circular(100.0.r),
                    boxShadow: [
                      BoxShadow(
                        color: widget.letra.colorHabilitado.withOpacity(0.4),
                        offset: const Offset(0, 4),
                        blurRadius: 15.0,
                        spreadRadius: 3.0
                      )
                    ]
                  ),
                  child: Center(child: Text(widget.letra.letra, style: TextStyle(color: Colors.white, fontFamily: 'Poppins-Semibold', fontSize: 48.0.sp))),
                )
              ),
              Text('Nombre Actividad', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0.sp)),
              Padding(padding: EdgeInsets.only(top: 22.0.h, bottom: 35.0.h),
                child: Text('Descripcion de la Actividad', textAlign: TextAlign.center, style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0.sp)),
              ),
            ],
          ),
          Positioned(top: 83.0.h, right:  10.0.w, child: BotonCerrar(onTap: () {Navigator.pop(context);}))
        ],
      ),
    );
  }
}


class OverlayActividadBloqueada extends StatelessWidget {
  const OverlayActividadBloqueada({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540.0.w,
      height: 352.0.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(bottom: 2.0.h,
            child: Container(
              width: 540.0.w,
              height: 140.0.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(247, 249, 252, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0.r),
                  bottomRight: Radius.circular(25.0.r)
                ),
              ),
              child: Center(  
                child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 350.0.w, 
                  height: 80.0.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(128, 132, 148, 1),
                    borderRadius: BorderRadius.circular(50.0.r), 
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(128, 132, 148, 1).withOpacity(0.4), 
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
                  )
                ),
              ),
            ),
          ),
          Container(
              width: 540.0.w,
              height: 212.0.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0.r),
                  topRight: Radius.circular(25.0.r)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 6),
                    blurRadius: 40.0
                  )
                ]
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 42.0.h),
                child: Text('Titulo Actividad', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0.sp)),
              ),
              Padding(padding: EdgeInsets.only(top: 22.0.h),
                child: Text('Completa los niveles anteriores\npara habilitar este nivel', textAlign: TextAlign.center, style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0.sp)),
              ),
            ],
          ),
          Positioned(top: 10.0.h, right:  10.0.w, child: BotonCerrar(onTap: () {Navigator.pop(context);}))
        ],
      ),
    );
  }
}