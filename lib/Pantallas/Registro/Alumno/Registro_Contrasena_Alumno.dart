import "package:flutter/material.dart";
import 'package:flutter_application/Componentes/Botones/Boton_Accion.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Iniciar_Registrar_Secundario.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Mostrar_Contrasena.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import 'package:flutter_application/Componentes/Captura_Datos/Captura_Datos.dart';
import 'package:flutter_application/Pantallas/Registro/Alumno/Registro_Clave_Alumno.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistroContrasenaAlumno extends StatefulWidget {
  const RegistroContrasenaAlumno({super.key});

  @override
  State<RegistroContrasenaAlumno> createState() => _RegistroContrasenaAlumnoState();
}

class _RegistroContrasenaAlumnoState extends State<RegistroContrasenaAlumno> {

  bool isSelected = true;

  TextEditingController contrasenaAlumno = TextEditingController();
  TextEditingController confirmarContrasenaAlumno = TextEditingController();

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
                        Text('Crea una contraseña', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0.sp)),
                        Padding(padding: EdgeInsets.only(top: 94.0.h),
                          child: SizedBox(
                            width: 576.0.w,
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: contrasenaAlumno, nombreCampo: 'Contraseña', obscureText: isSelected),
                                Padding(padding: EdgeInsets.only(top: 42.0.h, bottom: 25.0.h),
                                  child: CapturaDato(nombreControlador: confirmarContrasenaAlumno, nombreCampo: 'Confirmar Contraseña', obscureText: isSelected),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MostrarContrasena(
                                      onTap: () {
                                        setState(() {
                                          isSelected = !isSelected;
                                        });
                                      }, 
                                      color: isSelected ? const Color.fromRGBO(125, 162, 255, 1) : Colors.transparent
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 189.0.h),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 55.0.h),
                                  child: BotonSiguiente(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroClaveAlumno()));}),
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
                child: Boton_Accion(iconoBoton: Icons.arrow_back_rounded, iconoColor: const Color.fromRGBO(126, 132, 148, 1), colorBoton: Colors.white, onTap: (){})
              )
            ]
        ),
    );
  }
}