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
