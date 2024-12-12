import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leapp/components/botones/boton_accion.dart';
import 'package:leapp/components/botones/boton_iniciar_registrar_secundario.dart';
import 'package:leapp/components/botones/boton_siguiente.dart';
import 'package:leapp/components/captura/captura_datos.dart';
import 'package:leapp/screens/registro/alumno/registro_constrasena_alumno.dart';

class RegistroNombreAlumno extends StatefulWidget {
  const RegistroNombreAlumno({super.key});

  @override
  State<RegistroNombreAlumno> createState() => _RegistroNombreAlumnoState();
}

class _RegistroNombreAlumnoState extends State<RegistroNombreAlumno> {

  TextEditingController nombreAlumno = TextEditingController();
  TextEditingController apellidoPaternoAlumno = TextEditingController();
  TextEditingController apellidoMaternoAlumno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
      body: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Padding(padding: EdgeInsets.only(top: 70.0.h),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text('Escribe tu nombre', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0.sp)),
                        Padding(padding: EdgeInsets.only(top: 94.0.h),
                          child: SizedBox(
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: nombreAlumno, nombreCampo: 'Nombre', obscureText: false),
                                Padding(padding: EdgeInsets.symmetric(vertical: 42.0.h),
                                  child: CapturaDato(nombreControlador: apellidoPaternoAlumno, nombreCampo: 'Apellido Paterno', obscureText: false),
                                ),
                                CapturaDato(nombreControlador: apellidoMaternoAlumno, nombreCampo: 'Apellido Materno', obscureText: false),
                              ],
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 189.0.h),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 55.0.h),
                                  child: BotonSiguiente(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroContrasenaAlumno()));}),
                                ),
                                BotonInicioRegistroSecundario(onPressed: () {}, descripcion: '¿Ya tienes una cuenta?', accionSecundaria: 'Inicia aquí')
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 42.0.h,
                left: 27.0.w,
                child: BotonAccion(iconoBoton: Icons.arrow_back_rounded, iconoColor: const Color.fromRGBO(126, 132, 148, 1), colorBoton: Colors.white, onTap: (){})
              )
            ]
        ),
    );
  }
}