import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/Ejercicios/Boton_Ilustracion.dart';
import 'package:flutter_application/Componentes/Ejercicios/Letra_A/EjercicioTipo1/Boton_Opcion.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EjercioTipoUno extends StatefulWidget {

  const EjercioTipoUno({
    super.key,
  });

  @override
  State<EjercioTipoUno> createState() => _EjercioTipoUnoState();
}

class _EjercioTipoUnoState extends State<EjercioTipoUno> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BotonIlustracion(onTap: () {}, imagen: 'assets/img/imagenA/imagen/agua.png'),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Divider(color: Color.fromARGB(255, 212, 212, 212)),
        ),
        
      
      ],
    );
  }
}


/*
class EjercioTipoUno extends StatefulWidget {

  final String respuesta;

  const EjercioTipoUno({
    super.key,
    required this.respuesta
  });

  @override
  State<EjercioTipoUno> createState() => _EjercioTipoUnoState();
}

class _EjercioTipoUnoState extends State<EjercioTipoUno> {

  List<String> opciones = ['a','e','i','o','u'];



  bool uno = false;
  bool dos = false;
  bool tres = false;
  bool cuatro = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BotonIlustracion(onTap: () {}, imagen: 'assets/img/imagenA/imagen/agua.png'),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Divider(color: const Color.fromARGB(255, 212, 212, 212)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BotonOpcion(letra: 'a', habilitado: uno, onTap: () {
                  setState(() {
                    if (uno == false) {
                      uno = true;
                      dos = false;
                      tres = false;
                      cuatro = false;
                    } else {
                      uno = false;
                    }
                  });
                },),
                SizedBox(width: 20.0),
                BotonOpcion(letra: 'o', habilitado: dos, onTap: () {
                  setState(() {
                    if (dos == false) {
                      dos = true;
                      uno = false;
                      tres = false;
                      cuatro = false;
                    } else {
                      dos = false;
                    }
                  });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BotonOpcion(letra: 'i', habilitado: tres, onTap: () {
                  setState(() {
                    if (tres == false) {
                      tres = true;
                      dos = false;
                      uno = false;
                      cuatro = false;
                    } else {
                      tres = false;
                    }
                  });
                }),
                SizedBox(width: 20.0),
                BotonOpcion(letra: 'e', habilitado: cuatro, onTap: () {
                  setState(() {
                    if (cuatro == false) {
                      cuatro = true;
                      dos = false;
                      tres = false;
                      uno = false;
                    } else {
                      cuatro = false;
                    }
                  });
                }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
*/
