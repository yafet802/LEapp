import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Ejercicios/Letra_A/EjercicioTipo1/Boton_Opcion.dart';
import 'package:flutter_application/Pantallas/Curso/Boton_Curso.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Mostrar_Contrasena.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Opcion_Inicio.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Principal.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Accion.dart';
import 'package:flutter_application/Componentes/Botones/Boton_Siguiente.dart';
import 'package:flutter_application/Componentes/Captura_Datos/Captura_Datos.dart';
import 'package:flutter_application/Componentes/Ejercicios/Boton_Ilustracion.dart';
import 'package:flutter_application/Componentes/Ejercicios/Letra_A/EjercicioTipo1/Ejercicio_Tipo_Uno.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Actividad.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Alumno.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Info_Alumno.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Info_Tutor.dart';
import 'package:flutter_application/Componentes/TabBar/Barra_Buscar.dart';
import 'package:flutter_application/Componentes/TabBar/TabBar.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_application/Pantallas/Curso/Plantilla_Boton_Curso.dart';
import 'package:flutter_application/Pantallas/Curso/TabBar_Curso.dart';
import 'package:flutter_application/Overlays/Overlay_Actividad.dart';
import 'package:flutter_application/Overlays/Overlay_Alumno.dart';
import 'package:flutter_application/Pantallas/Escoger_Rol.dart';
import 'package:flutter_application/Pantallas/Inicio/Inicio_Alumno.dart';
import 'package:flutter_application/Pantallas/Inicio/Inicio_Tutor.dart';
import 'package:flutter_application/Pantallas/Perfiles/Perfil_Alumno.dart';
import 'package:flutter_application/Pantallas/Perfiles/Perfil_Tutor.dart';
import 'package:flutter_application/Pantallas/Registro/Alumno/Registro_Clave_Alumno.dart';
import 'package:flutter_application/Pantallas/Registro/Tutor/Registro_Contrasena_Tutor.dart';
import 'package:flutter_application/Pantallas/Registro/Tutor/Registro_Correo_Tutor.dart';
import 'package:flutter_application/Pantallas/Registro/Tutor/Registro_Nombre_Tutor.dart';
import 'package:flutter_application/pruebas.dart';
import 'package:flutter_application/pruebas2.dart';
import 'package:flutter_application/pruebas3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(796.0, 1140.0),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
            body: Center(child: BotonOpcion(onTap: () {}, letra: 'a'))
          ),
        );
      },
    );
  }
}
