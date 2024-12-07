import "package:flutter/material.dart";
import 'package:flutter_application/Componentes/Botones/Boton_Accion.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Iniciar_Registrar_Secundario.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Mostrar_Contrasena.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import 'package:flutter_application/Componentes/Captura_Datos/Captura_Datos.dart';
import 'package:flutter_application/Pantallas/Inicio/Inicio_Tutor.dart';

class RegistroContrasenaTutor extends StatefulWidget {
  const RegistroContrasenaTutor({super.key});

  @override
  State<RegistroContrasenaTutor> createState() => _RegistroContrasenaTutorState();
}

class _RegistroContrasenaTutorState extends State<RegistroContrasenaTutor> {

  bool isSelected = true;

  TextEditingController contrasenaTutor = TextEditingController();
  TextEditingController confirmarContrasenaTutor = TextEditingController();

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
                        const Text('Crea una contraseña', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0)),
                        Padding(padding: const EdgeInsets.only(top: 94.0),
                          child: SizedBox(
                            width: 576.0,
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: contrasenaTutor, nombreCampo: 'Contraseña', obscureText: isSelected),
                                Padding(padding: const EdgeInsets.only(top: 42.0, bottom: 25.0),
                                  child: CapturaDato(nombreControlador: confirmarContrasenaTutor, nombreCampo: 'Confirmar Contraseña', obscureText: isSelected),
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
                                ),
                              ],
                            ),
                          )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 292.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(bottom: 55.0),
                                  child: BotonSiguiente(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const InicioTutor()));}),
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