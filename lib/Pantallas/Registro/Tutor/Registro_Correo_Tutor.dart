import "package:flutter/material.dart";
import 'package:flutter_application/Componentes/Botones/Boton_Accion.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Iniciar_Registrar_Secundario.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Mostrar_Contrasena.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Opcion_Inicio.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import 'package:flutter_application/Componentes/Captura_Datos/Captura_Datos.dart';
import 'package:flutter_application/Pantallas/Registro/Tutor/Registro_Contrasena_Tutor.dart';

class RegistroCorreoTutor extends StatefulWidget {
  const RegistroCorreoTutor({super.key});

  @override
  State<RegistroCorreoTutor> createState() => _RegistroCorreoTutorState();
}

class _RegistroCorreoTutorState extends State<RegistroCorreoTutor> {

  TextEditingController correoTutor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
      body: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Padding(padding: EdgeInsets.only(top: 70.0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        const Text('Registra un correo', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0)),
                        Padding(padding: const EdgeInsets.only(top: 94.0),
                          child: SizedBox(
                            width: 576.0,
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: correoTutor, nombreCampo: 'Correo', obscureText: false),
                                Padding(padding: EdgeInsets.only(top: 81.0),
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text('O regístrate con', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 24.0)),
                                        const SizedBox(height: 31.0),
                                        Container(
                                          width: 320,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(218, 224, 240, 1),
                                            borderRadius: BorderRadius.circular(15.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.1),
                                                offset: const Offset(0, 6),
                                                blurRadius: 40.0,
                                              )
                                            ]
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              BotonOpcionInicio(colorBoton: Colors.white, colorSombra: const Color.fromRGBO(191, 197, 211, 0.25), logoBoton: const Image(image: AssetImage('assets/img/logoGoogle.png'))),
                                              Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                                child: BotonOpcionInicio(colorBoton: const Color.fromRGBO(27, 116, 244, 1), colorSombra: const Color.fromRGBO(21, 94, 199, 0.25), logoBoton: const Image(image: AssetImage('assets/img/logoFacebook.png'))),
                                              ),
                                              BotonOpcionInicio(colorBoton: const Color.fromRGBO(0, 215, 87, 1), colorSombra: const Color.fromRGBO(0, 167, 68, 0.25), logoBoton: const Image(image: AssetImage('assets/img/logoWhatsapp.png'))),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 266.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(bottom: 55.0),
                                  child: BotonSiguiente(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroContrasenaTutor()));}),
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
                child: Boton_Accion(iconoBoton: Icons.arrow_back_rounded, iconoColor: const Color.fromRGBO(126, 132, 148, 1), colorBoton: Colors.white, onTap: (){Navigator.pop(context);})
              )
            ]
        ),
    );
  }
}