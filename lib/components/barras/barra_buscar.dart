import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite, 
      height: 80.0,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: const SearchBar(
        elevation: WidgetStatePropertyAll<double>(0.0),
        surfaceTintColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        backgroundColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        overlayColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(218, 224, 240, 1)),
        padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 35.0)),
        leading: Padding(
          padding: EdgeInsets.only(left: 35.0),
            child: Image(image: AssetImage('assets/img/buscarIcono.png'), width: 32.0, height: 32.0),
          ),
        hintStyle: WidgetStatePropertyAll<TextStyle>(TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 28.0)),
        hintText: 'Buscar Alumno',
      ),
    );
  }
}