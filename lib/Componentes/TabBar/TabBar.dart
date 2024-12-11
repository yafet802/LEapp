import 'package:flutter/material.dart';
import 'package:flutter_application/Componentes/TabBar/Apartados/Apartado_Actividad.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBart extends StatefulWidget {
  const TabBart({super.key});

  @override
  State<TabBart> createState() => _TabBartState();
}

class _TabBartState extends State<TabBart> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  Color _indicatorColor = const Color.fromRGBO(204, 52, 141, 1); // Color inicial del indicador

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        switch (_tabController.index) {
          case 0:
            _indicatorColor = const Color.fromRGBO(204, 52, 141, 1);
            break;
          case 1:
            _indicatorColor = const Color.fromRGBO(206, 130, 255, 1);
            break;
          case 2:
            _indicatorColor = const Color.fromRGBO(255, 171, 51, 1);
            break;
          default:
            _indicatorColor = const Color.fromRGBO(0, 205, 156, 1);
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Column(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 38.0.w),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: 952.0.w,
                    height: 80.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(218, 224, 240, 1),
                      borderRadius: BorderRadius.circular(50.0.r),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      splashBorderRadius: BorderRadius.circular(50.0.r),
                      physics: const ClampingScrollPhysics(),
                      indicatorPadding: EdgeInsets.symmetric(vertical: 10.0.w),
                      unselectedLabelColor: const Color.fromRGBO(126, 132, 148, 1),
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0.r),
                        color: _indicatorColor,
                        boxShadow: [
                          BoxShadow(
                            color: _indicatorColor.withOpacity(0.4),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      tabs: [
                        Tab(
                          child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Vocales',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp)))),
                        ),
                        Tab(
                          child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Consonantes',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp)))),
                        ),
                        Tab(
                          child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Silabas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp)))),
                        ),
                        Tab(
                          child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Compuestas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp)))),
                        ),
                      ]
                    ),
                  ),
                ),
              ),
          ),
            SizedBox(height: 24.0.h),
            Expanded(
                child: TabBarView(
                  controller: _tabController,
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
              ),
          ],
        ),
      );
    }
  }