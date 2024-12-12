import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leapp/components/apartados/apartado_info_alumno.dart';
import 'package:leapp/components/barras/tabbar.dart';
import 'package:leapp/components/botones/boton_cerrar.dart';
import 'package:leapp/components/botones/boton_perfil.dart';

class PerfilAlumno extends StatefulWidget {
  const PerfilAlumno({super.key});

  @override
  State<PerfilAlumno> createState() => _PerfilAlumnoState();
}

class _PerfilAlumnoState extends State<PerfilAlumno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 478.0.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 6),
                  blurRadius: 40.0
                )
              ]
            ),
          ),
          Positioned(
            top: 18.0.h,
            right: 27.0.w,
            child: SafeArea(child: BotonCerrar(onTap: () {}))
          ),
          Padding(padding: EdgeInsets.only(top: 36.0.h),
            child: SafeArea(
              child: SizedBox(
                width: 463.0.w,
                height: 140.0.h,
                child: Wrap(
                  spacing: 23.0.w,
                    direction: Axis.horizontal,
                    clipBehavior: Clip.none,
                    children: [
                      Image(image: const AssetImage('assets/img/FotoPerfilAlumno.png'), width: 140.0.w, height: 140.0.h),
                      SizedBox(
                        width: 300.0.w,
                        height: 140.0.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Nombre', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0.sp)),
                            Padding(padding: EdgeInsets.only(top: 14.0.h),
                              child: BotonPerfil(nombreBoton: 'Eliminar Alumno', onTap: () {}),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          Padding(padding: EdgeInsets.only(top: 203.0.h),
            child: const SafeArea(child: ApartadoInfoAlumno()),
          ),
          Padding(
            padding: EdgeInsets.only(top: 354.0.h),
            child: const TabBart(),
          )
        ],
      )
    );
  }
}