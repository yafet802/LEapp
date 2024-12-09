import "package:flutter/material.dart";
import 'package:leapp/components/barras/tabbar_curso.dart';
import 'package:leapp/components/botones/boton_accion.dart';
import 'package:leapp/components/botones/boton_iniciar_registrar_secundario.dart';
import 'package:leapp/components/botones/boton_mostrar_contrasena.dart';
import 'package:leapp/components/botones/boton_siguiente.dart';
import 'package:leapp/components/captura/captura_datos.dart';

class InicioAlumno extends StatefulWidget {
  const InicioAlumno({super.key});

  @override
  State<InicioAlumno> createState() => _InicioAlumnoState();
}

class _InicioAlumnoState extends State<InicioAlumno> {

  bool isSelected = true;

  TextEditingController nombreAlumno = TextEditingController();
  TextEditingController contrasenaAlumno = TextEditingController();

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
                        const Text('Inicia Sesión', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 36.0)),
                        Padding(padding: const EdgeInsets.only(top: 94.0),
                          child: SizedBox(
                            width: 576.0,
                            child: Column(
                              children: [
                                CapturaDato(nombreControlador: nombreAlumno, nombreCampo: 'Nombre', obscureText: false),
                                Padding(padding: const EdgeInsets.only(top: 42.0, bottom: 25.0),
                                  child: CapturaDato(nombreControlador: contrasenaAlumno, nombreCampo: 'Contraseña', obscureText: isSelected),
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
                        Padding(padding: const EdgeInsets.only(top: 189.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(bottom: 55.0),
                                  child: BotonSiguiente(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const TabBarCurso()));}),
                                ),
                                BotonInicioRegistroSecundario(onPressed: () {}, descripcion: '¿No tienes una cuenta?', accionSecundaria: 'Regístrate')
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
                child: BotonAccion(iconoBoton: Icons.arrow_back_rounded, iconoColor: const Color.fromRGBO(126, 132, 148, 1), colorBoton: Colors.white, onTap: (){Navigator.pop(context);})
              )
            ]
        ),
    );
  }
}