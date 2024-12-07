import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Actividad.dart';
import 'package:flutter_application/Letras/Letras.dart';

class TabBart extends StatefulWidget {
  const TabBart({super.key});

  @override
  State<TabBart> createState() => _TabBartState();
}

class _TabBartState extends State<TabBart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 1600.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(218, 224, 240, 1),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(50.0),
                    physics: const ClampingScrollPhysics(),
                    indicatorPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    unselectedLabelColor: const Color.fromRGBO(126, 132, 148, 1),
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color.fromRGBO(125, 162, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(125, 162, 255, 1).withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    tabs: const [
                      Tab(
                        child: SizedBox(height: 60.0,
                          child: Align(alignment: Alignment.bottomCenter, child: Text('Vocales',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 28.0))),
                        ),
                      ),
                      Tab(
                        child: SizedBox(height: 60.0,
                          child: Align(alignment: Alignment.bottomCenter, child: Text('Consonantes',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 28.0))),
                        ),
                      ),
                      Tab(
                        child: SizedBox(height: 60.0,
                          child: Align(alignment: Alignment.bottomCenter, child: Text('Silabas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 28.0))),
                        ),
                      ),
                      Tab(
                        child: SizedBox(height: 60.0,
                          child: Align(alignment: Alignment.bottomCenter, child: Text('Silabas Compuestas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 28.0))),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
            const SizedBox(height: 27.0),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      for (final letra in vocales) 
                        ApartadoActividad(letra: letra.letra, colorLetra: letra.colorHabilitado)
                    ],
                  ),
                  ListView(
                    children: [
                      for (final letra in consonantes) 
                        ApartadoActividad(letra: letra.letra, colorLetra: letra.colorHabilitado)
                    ],
                  ),
                  ListView(
                    children: [
                      for (final letra in silabas) 
                        ApartadoActividad(letra: letra.letra, colorLetra: letra.colorHabilitado)
                    ],
                  ),
                  ListView(
                    children: [
                      for (final letra in silabasCompuestas) 
                        ApartadoActividad(letra: letra.letra, colorLetra: letra.colorHabilitado)
                    ],
                  ),
                ]
              ),
            )
          ],
        ),
      );
    }
  }