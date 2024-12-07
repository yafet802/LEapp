import "package:flutter/material.dart";
import 'package:flutter_application/Componentes/Botones/Boton_Accion.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Iniciar_Registrar_Secundario.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import 'package:flutter_application/Componentes/Captura_Datos/Captura_Datos.dart';
import 'package:flutter_application/Pantallas/Registro/Alumno/Registro_Contrasena_Alumno.dart';

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
                child: Padding(padding: const EdgeInsets.only(top: 70.0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        const Text('Escribe tu nombre', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0)),
                        Padding(padding: const EdgeInsets.only(top: 94.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: nombreAlumno, nombreCampo: 'Nombre', obscureText: false),
                                Padding(padding: const EdgeInsets.symmetric(vertical: 42.0),
                                  child: CapturaDato(nombreControlador: apellidoPaternoAlumno, nombreCampo: 'Apellido Paterno', obscureText: false),
                                ),
                                CapturaDato(nombreControlador: apellidoMaternoAlumno, nombreCampo: 'Apellido Materno', obscureText: false),
                              ],
                            ),
                          )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 189.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(bottom: 55.0),
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
                top: 42.0,
                left: 27.0,
                child: Boton_Accion(iconoBoton: Icons.arrow_back_rounded, iconoColor: const Color.fromRGBO(126, 132, 148, 1), colorBoton: Colors.white, onTap: (){})
              )
            ]
        ),
    );
  }
}