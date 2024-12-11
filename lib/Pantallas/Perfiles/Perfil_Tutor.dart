import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Cerrar.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Filtrar.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Perfil.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Alumno.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Info_Tutor.dart';
import 'package:flutter_application/Componentes/TabBar/Barra_Buscar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PerfilTutor extends StatefulWidget {
  const PerfilTutor({super.key});

  @override
  State<PerfilTutor> createState() => _PerfilTutorState();
}

class _PerfilTutorState extends State<PerfilTutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 491.0.h,
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
            top: 19.0.h,
            right: 27.0.w,
            child: BotonCerrar(onTap: () {})
          ),
          Padding(padding: EdgeInsets.only(top: 66.0.h),
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
                        Text('Nombre Tutor', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0.sp)),
                        Padding(padding: EdgeInsets.only(top: 14.0.h),
                          child: BotonPerfil(nombreBoton: 'Configuracion', onTap: () {}),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 233.0.h),
            child: const ApartadoInfoTutor(),
          ),
          Padding(padding: EdgeInsets.only(top: 385.0.h, left: 38.0.w, right: 156.0.w),
            child: const BarraBusqueda(),
          ),
          Positioned(top: 385.0.h, right: 38.0.w, child: Boton_Filtrar(onTap: (){})),
          Padding(padding: EdgeInsets.only(top: 491.0.h),
            child: Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < 30; i++)
                    const ApartadoAlumno()
                ],
              )
            ),
          )
        ],
      )
    );
  }
}