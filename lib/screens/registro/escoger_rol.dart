import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:leapp/components/botones/boton_iniciar_registrar_secundario.dart";
import "package:leapp/components/botones/boton_siguiente.dart";
import "package:leapp/screens/registro/alumno/registro_nombre_alumno.dart";
import "package:leapp/screens/registro/tutor/registro_nombre_tutor.dart";

class SeleccionUsuario extends StatefulWidget {
  const SeleccionUsuario({super.key});

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
          Padding(padding: EdgeInsets.only(top: 70.0.h),
            child: SizedBox(
              child: Column(
                children: [
                  Text('Bienvenido!', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 36.0.sp)),
                  Text('Escoge tu rol', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Medium', fontSize: 28.0.sp)),
                  Padding(padding: EdgeInsets.only(top: 189.0.h),
                    child: SizedBox(
                      width: 536.0.w,
                      height: 287.0.h,
                      child: Stack(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      rolSeleccionado = !rolSeleccionado;
                                    });
                                  },
                                  child: Container(
                                    width: 516.0.w,
                                    height: 133.0.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.0.r),
                                        topRight: Radius.circular(25.0.r)
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
                                    width: 516.0.w,
                                    height: 133.0.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25.0.r),
                                        bottomRight: Radius.circular(25.0.r)
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
                          top: rolSeleccionado ? 0.0.h : 130.0.h,
                          duration: const Duration(milliseconds: 150),
                          child: Container(
                            width: 536.0.w,
                            height: 156.0.h,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(125, 162, 255, 1),
                              borderRadius: BorderRadius.circular(35.0.r),
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
                                    fontSize: 36.0.sp
                                  )
                                ),
                              ),
                              SizedBox(height: 80.0.h),
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
                                    fontSize: 36.0.sp
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
            bottom: 70.0.h,
            child: SizedBox(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 55.0.h),
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
