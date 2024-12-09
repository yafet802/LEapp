import 'package:flutter/material.dart';
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
            height: 491.0,
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
            top: 19.0,
            right: 27.0,
            child: BotonCerrar(onTap: () {})
          ),
          Padding(padding: const EdgeInsets.only(top: 66.0),
            child: SizedBox(
              width: 463.0,
              height: 140.0,
              child: Wrap(
                spacing: 23.0,
                direction: Axis.horizontal,
                clipBehavior: Clip.none,
                children: [
                  const Image(image: AssetImage('assets/img/FotoPerfilAlumno.png'), width: 140.0, height: 140.0),
                  SizedBox(
                    width: 300.0,
                    height: 140.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Nombre', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 32.0)),
                        Padding(padding: const EdgeInsets.only(top: 14.0),
                          child: BotonPerfil(nombreBoton: 'Eliminar Alumno', onTap: () {}),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 233.0),
            child: ApartadoInfoAlumno(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 384.0),
            child: TabBart(),
          )
        ],
      )
    );
  }
}