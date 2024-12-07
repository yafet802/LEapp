import "package:flutter/material.dart";
import 'package:flutter_application/Componentes/Botones/Boton_Iniciar_Registrar_Secundario.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import "package:flutter_application/Pantallas/Inicio/Inicio_Alumno.dart";
import "package:flutter_application/Pantallas/Inicio/Inicio_Tutor.dart";
import "package:flutter_application/Pantallas/Registro/Alumno/Registro_Nombre_Alumno.dart";
import "package:flutter_application/Pantallas/Registro/Tutor/Registro_Nombre_Tutor.dart";

class SeleccionUsuario extends StatefulWidget {
  @override
  State<SeleccionUsuario> createState() => _SeleccionUsuarioState();
}

class _SeleccionUsuarioState extends State<SeleccionUsuario> {
  
  bool rolSeleccionado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
      body: Stack(
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
        children: [
          Padding(padding: EdgeInsets.only(top: 70.0),
            child: SizedBox(
              child: Column(
                children: [
                  const Text('Bienvenido!', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 36.0)),
                  const Text('Escoge tu rol', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 28.0)),
                  Padding(padding: const EdgeInsets.only(top: 189.0),
                    child: SizedBox(
                      width: 536.0,
                      height: 287.0,
                      child: Stack(
                        children: [
                          Padding(padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      rolSeleccionado = !rolSeleccionado;
                                    });
                                  },
                                  child: Container(
                                    width: 516.0,
                                    height: 133.0,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(25.0),
                                        topRight: Radius.circular(25.0)
                                      ),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: const Offset(0.0, 6.0),
                                          blurRadius: 40.0,
                                        )
                                      ]
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      rolSeleccionado = !rolSeleccionado;
                                    });
                                  },
                                  child: Container(
                                    width: 516.0,
                                    height: 133.0,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(25.0),
                                        bottomRight: Radius.circular(25.0)
                                      ),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: const Offset(0.0, -6.0),
                                          blurRadius: 40.0,
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          curve: Curves.easeInOut,
                          top: rolSeleccionado ? 0.0 : 130.0,
                          duration: const Duration(milliseconds: 150),
                          child: Container(
                            width: 536.0,
                            height: 156.0,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(125, 162, 255, 1),
                              borderRadius: BorderRadius.circular(35.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(125, 162, 255, 0.4),
                                  offset: Offset(0.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 3.0
                                )
                              ]
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (rolSeleccionado == false) {
                                    setState(() {
                                      rolSeleccionado = !rolSeleccionado;
                                    });
                                  }
                                },
                                child: Text('Alumno',
                                  style: TextStyle(
                                    color: rolSeleccionado ? Colors.white : Colors.black,
                                    fontFamily: 'Poppins-SemiBold',
                                    fontSize: 36.0
                                  )
                                ),
                              ),
                              const SizedBox(height: 80.0),
                              GestureDetector(
                                onTap: () {
                                  if (rolSeleccionado == true) {
                                    setState(() {
                                      rolSeleccionado = !rolSeleccionado;
                                    });
                                  }
                                },
                                child: Text('Profesor',
                                  style: TextStyle(
                                    color: rolSeleccionado ? Colors.black : Colors.white,
                                    fontFamily: 'Poppins-SemiBold',
                                    fontSize: 36.0
                                  )
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 70.0,
            child: SizedBox(
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 55.0),
                    child: BotonSiguiente(onPressed: () {
                      if (rolSeleccionado == true) {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroNombreAlumno()));
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroNombreTutor()));
                      }
                    }),
                  ),
                  BotonInicioRegistroSecundario(onPressed: () {}, descripcion: '¿No tienes una cuenta?', accionSecundaria: 'Regístrate')
                ],
              ),
            )
          )

        ]
      ),
    );
  }
}
