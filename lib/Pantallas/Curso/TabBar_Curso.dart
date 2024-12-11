import 'package:flutter/material.dart';
import 'package:flutter_application/Pantallas/Curso/Boton_Curso.dart';
import 'package:flutter_application/Letras/Letras.dart';
import 'package:flutter_application/Pantallas/Perfiles/Perfil_Alumno.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application/Pantallas/Curso/Plantilla_Boton_Curso.dart';

class TabBarCurso extends StatefulWidget {
  const TabBarCurso({super.key});

  @override
  State<TabBarCurso> createState() => _TabBarCursoState();
}

class _TabBarCursoState extends State<TabBarCurso> with SingleTickerProviderStateMixin {

  int _selectedTabIndex = 0;
  late TabController _tabController;
  Color _indicatorColor = const Color.fromRGBO(204, 52, 141, 1);

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
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0.0, left: 0.0, right: 0.0,
              child: Container(
                width: double.maxFinite,
                height: 134.0.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, -6),
                      blurRadius: 40.0,
                      color: Colors.black.withOpacity(0.1)
                    )
                  ]
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 380.0.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 6),
                      blurRadius: 40.0,
                      color: Colors.black.withOpacity(0.1)
                    )
                  ]
                ),
              ),
            ),
            Column(
              children: [
                SafeArea(
                  child: Padding(padding: EdgeInsets.only(top: 23.0.h, bottom: 23.0.h),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 80.0.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(left: 80.0.w, 
                            child: Text(
                            _selectedTabIndex == 0
                            ? 'Vocales'
                            : _selectedTabIndex == 1
                                ? 'Consonantes'
                                : _selectedTabIndex == 2
                                ? 'Silabas'
                                : 'Silabas Compuestas',
                              style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0.sp))),
                          Positioned(
                            right: 38.0.w, 
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PerfilAlumno()));
                              },
                              child: Container(
                                width: 200.0.w, 
                                height: 80.0.h, 
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(218, 224, 240, 1),
                                  borderRadius: BorderRadius.circular(100.0.r)
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 6.0.w, right: 24.0.w, top: 6.0.h, bottom: 6.0.h),
                                      child: Container(
                                        width: 70.0.w,
                                        height: 70.0.w,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.08),
                                              offset: const Offset(0, 5),
                                              blurRadius: 10.0,
                                              spreadRadius: 3.0
                                            )
                                          ]
                                        ),
                                        child: Image(image: const AssetImage('assets/img/FotoPerfilAlumno.png'), width: 70.0.w, height: 70.0.w)
                                      ),
                                    ),
                                    Text('Perfil', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0.sp))
                                  ],
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 37.0.h, left: 38.w, right: 38.0.w),
                  child: Container(
                    width: double.infinity,
                    height: 196.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(218, 224, 240, 1),
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 19.0.h, left: 29.0.w),
                            child: Text('Actividad a realizar:', style: TextStyle(color: const Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0.sp)),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 18.0.w),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                              width: double.maxFinite,
                              height: 115.0.h,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(204, 52, 141, 1),
                                borderRadius: BorderRadius.circular(25.0.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromRGBO(204, 52, 141, 1).withOpacity(0.4),
                                    offset: const Offset(0, 10),
                                    blurRadius: 20.0,
                                    spreadRadius: 3.0
                                  )
                                ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 30.0.w),
                                    child: Text('Vocales,  Vocal A', style: TextStyle(color: const Color.fromRGBO(218, 224, 240, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0.sp)),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 30.0.w),
                                    child: Text('Titulo Actividad', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-Semibold', fontSize: 36.0.sp)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                /*

                  CAMINOS

                */

                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(padding: EdgeInsets.symmetric(vertical: 81.0.h, horizontal: 106.0.w),
                                  child: SizedBox(
                                    width: 540.0.w,
                                    height: 900.0.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        SizedBox(
                                          width: 540.0.w,
                                          height: 900.0.h,
                                          child: Stack(
                                            children: List.generate(vocales.length, (index) {
                                              
                                              double x;
                                              if (index % 4 == 0) {
                                                x = 200.w;
                                              } else if (index % 4 == 1) {
                                                x = 20.w;
                                              } else if (index % 4 == 2) {
                                                x = 200.w;
                                              } else {
                                                x = 380.w;
                                              }

                                              double y = 15.h + (index * 180.h);

                                              double adjustedLeft = x.toDouble() - 20.w;
                                              double adjustedTop = y.toDouble() - 15.h;

                                              TipoPlantillaBoton tipo;
                                              if (index == vocales.length - 1) {
                                                tipo = TipoPlantillaBoton.noEsquinas;
                                              } else if (index % 4 == 0) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              } else if (index % 4 == 1) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else if (index % 4 == 2) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              }

                                              return Stack(
                                                children: [
                                                  Positioned(
                                                    left: adjustedLeft,
                                                    top: adjustedTop,
                                                    child: PlantillaBotonCurso(tipo: tipo),
                                                  ),
                                                  Positioned(
                                                    left: x.toDouble(),
                                                    top: y.toDouble(),
                                                    child: BotonCurso(letra: vocales[index]),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        )                                      
                                      ],
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(padding: const EdgeInsets.symmetric(vertical: 81.0),
                                  child: SizedBox(
                                    width: 540.0.w,
                                    height: 4140.0.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        SizedBox(
                                          width: 540.0.w,
                                          height: 4140.0.h,
                                          child: Stack(
                                            children: List.generate(consonantes.length, (index) {
                                              
                                              double x;
                                              if (index % 4 == 0) {
                                                x = 200.w;
                                              } else if (index % 4 == 1) {
                                                x = 20.w;
                                              } else if (index % 4 == 2) {
                                                x = 200.w;
                                              } else {
                                                x = 380.w;
                                              }

                                              double y = 15.h + (index * 180.h);

                                              double adjustedLeft = x.toDouble() - 20.w;
                                              double adjustedTop = y.toDouble() - 15.h;

                                              TipoPlantillaBoton tipo;
                                              if (index == consonantes.length - 1) {
                                                tipo = TipoPlantillaBoton.noEsquinas;
                                              } else if (index % 4 == 0) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              } else if (index % 4 == 1) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else if (index % 4 == 2) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              }

                                              return Stack(
                                                children: [
                                                  Positioned(
                                                    left: adjustedLeft,
                                                    top: adjustedTop,
                                                    child: PlantillaBotonCurso(tipo: tipo),
                                                  ),
                                                  Positioned(
                                                    left: x.toDouble(),
                                                    top: y.toDouble(),
                                                    child: BotonCurso(letra: consonantes[index]),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        )                                      
                                      ],
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(padding: const EdgeInsets.symmetric(vertical: 81.0),
                                  child: SizedBox(
                                    width: 540.0.w,
                                    height: 3780.0.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        SizedBox(
                                          width: 540.0.w,
                                          height: 3780.0.h,
                                          child: Stack(
                                            children: List.generate(silabas.length, (index) {
                                              
                                              double x;
                                              if (index % 4 == 0) {
                                                x = 200.w;
                                              } else if (index % 4 == 1) {
                                                x = 20.w;
                                              } else if (index % 4 == 2) {
                                                x = 200.w;
                                              } else {
                                                x = 380.w;
                                              }

                                              double y = 15.h + (index * 180.h);

                                              double adjustedLeft = x.toDouble() - 20.w;
                                              double adjustedTop = y.toDouble() - 15.h;

                                              TipoPlantillaBoton tipo;
                                              if (index == silabas.length - 1) {
                                                tipo = TipoPlantillaBoton.noEsquinas;
                                              } else if (index % 4 == 0) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              } else if (index % 4 == 1) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else if (index % 4 == 2) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              }

                                              return Stack(
                                                children: [
                                                  Positioned(
                                                    left: adjustedLeft,
                                                    top: adjustedTop,
                                                    child: PlantillaBotonCurso(tipo: tipo),
                                                  ),
                                                  Positioned(
                                                    left: x.toDouble(),
                                                    top: y.toDouble(),
                                                    child: BotonCurso(letra: silabas[index]),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        )                                      
                                      ],
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(padding: const EdgeInsets.symmetric(vertical: 81.0),
                                  child: SizedBox(
                                    width: 540.0.w,
                                    height: 2160.0.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        SizedBox(
                                          width: 540.0.w,
                                          height: 2160.0.h,
                                          child: Stack(
                                            children: List.generate(silabasCompuestas.length, (index) {
                                              
                                              double x;
                                              if (index % 4 == 0) {
                                                x = 200.w;
                                              } else if (index % 4 == 1) {
                                                x = 20.w;
                                              } else if (index % 4 == 2) {
                                                x = 200.w;
                                              } else {
                                                x = 380.w;
                                              }

                                              double y = 15.h + (index * 180.h);

                                              double adjustedLeft = x.toDouble() - 20.w;
                                              double adjustedTop = y.toDouble() - 15.h;

                                              TipoPlantillaBoton tipo;
                                              if (index == silabasCompuestas.length - 1) {
                                                tipo = TipoPlantillaBoton.noEsquinas;
                                              } else if (index % 4 == 0) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              } else if (index % 4 == 1) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else if (index % 4 == 2) {
                                                tipo = TipoPlantillaBoton.esquinaInferiorDerecha;
                                              } else {
                                                tipo = TipoPlantillaBoton.esquinaInferiorIzquierda;
                                              }

                                              return Stack(
                                                children: [
                                                  Positioned(
                                                    left: adjustedLeft,
                                                    top: adjustedTop,
                                                    child: PlantillaBotonCurso(tipo: tipo),
                                                  ),
                                                  Positioned(
                                                    left: x.toDouble(),
                                                    top: y.toDouble(),
                                                    child: BotonCurso(letra: silabasCompuestas[index]),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        )                                      
                                      ],
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ]
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: 29.0.w, bottom: 29.0.w),
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
                        onTap: (index) {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                        controller: _tabController,
                        splashBorderRadius: BorderRadius.circular(50.0),
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
                            child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Vocales',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                            ),
                          ),
                          Tab(
                            child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Consonantes',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                            ),
                          ),
                          Tab(
                            child: SizedBox(height: 60.0.h, child: Align(alignment: Alignment.center, child: Text('Silabas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                            ),
                          ),
                          Tab(
                            child: SizedBox(height: 60.0.h,child: Align(alignment: Alignment.center, child: Text('Compuestas',style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24.0.sp))),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          ],
        )
      );
    }
  }