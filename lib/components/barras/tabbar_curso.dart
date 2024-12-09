import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_curso.dart';
import 'package:leapp/letras/letras.dart';
import 'package:leapp/screens/perfiles/perfil_alumno.dart';

class TabBarCurso extends StatefulWidget {
  const TabBarCurso({super.key});

  @override
  State<TabBarCurso> createState() => _TabBarCursoState();
}

class _TabBarCursoState extends State<TabBarCurso> with SingleTickerProviderStateMixin {

  int _selectedTabIndex = 0;
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
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 380.0,
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
            Positioned(
              bottom: 0.0,
              child: Container(
                width: double.maxFinite,
                height: 134.0,
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
            Column(
              children: [
                Padding(padding: const EdgeInsets.only(top: 53.0, bottom: 23.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 80.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(left: 80.0, 
                          child: Text(
                          _selectedTabIndex == 0
                          ? 'Vocales'
                          : _selectedTabIndex == 1
                              ? 'Consonantes'
                              : _selectedTabIndex == 2
                              ? 'Silabas'
                              : 'Silabas Compuestas',
                          style: const TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0))),
                        Positioned(
                          right: 38.0, 
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PerfilAlumno()));
                            },
                            child: Container(
                              width: 200.0, 
                              height: 80.0, 
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(218, 224, 240, 1),
                                borderRadius: BorderRadius.circular(100.0)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(padding: const EdgeInsets.only(left: 6.0, right: 24.0),
                                    child: Container(
                                      width: 70.0,
                                      height: 70.0,
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
                                      child: const Image(image: AssetImage('assets/img/FotoPerfilAlumno.png'), width: 70.0, height: 70.0)
                                    ),
                                  ),
                                  const Text('Perfil', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0))
                                ],
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 27.0, left: 38, right: 38.0),
                  child: Container(
                    width: double.infinity,
                    height: 196.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(218, 224, 240, 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 19.0, left: 29.0),
                            child: Text('Actividad a realizar:', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0)),
                          ),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                              width: double.maxFinite,
                              height: 115.0,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(204, 52, 141, 1),
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromRGBO(204, 52, 141, 1).withOpacity(0.4),
                                    offset: const Offset(0, 10),
                                    blurRadius: 20.0,
                                    spreadRadius: 3.0
                                  )
                                ]
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 15.0,left: 30.0),
                                    child: Text('Vocales,  Vocal A', style: TextStyle(color: Color.fromRGBO(218, 224, 240, 1), fontFamily: 'Poppins-Semibold', fontSize: 24.0)),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 30.0),
                                    child: Text('Titulo Actividad', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-Semibold', fontSize: 36.0)),
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
                                Padding(padding: const EdgeInsets.symmetric(vertical: 81.0),
                                  child: SizedBox(
                                    width: 540.0,
                                    height: 900.0,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        const Image(image: AssetImage('assets/img/caminoVocales.png'), width: 540.0, height: 900.0),
                                        SizedBox(
                                          width: 540.0,
                                          height: 900.0,
                                          child: Stack(
                                            children: List.generate(vocales.length, (index) {

                                              int x;
                                              if (index % 4 == 0) {
                                                x = 200;
                                              } else if (index % 4 == 1) {
                                                x = 20;
                                              } else if (index % 4 == 2) {
                                                x = 200;
                                              } else {
                                                x = 380;
                                              }
                                      
                                              int y = 15 + (index * 180);
                                      
                                              return Positioned(
                                                left: x.toDouble(),
                                                top: y.toDouble(),
                                                child: BotonCurso(letra: vocales[index])
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
                                    width: 540.0,
                                    height: 4140.0,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        const Image(image: AssetImage('assets/img/caminoConsonantes.png'), width: 540.0, height: 4140.0),
                                        SizedBox(
                                          width: 540.0,
                                          height: 4140.0,
                                          child: Stack(
                                            children: List.generate(consonantes.length, (index) {

                                              int x;
                                              if (index % 4 == 0) {
                                                x = 200;
                                              } else if (index % 4 == 1) {
                                                x = 20;
                                              } else if (index % 4 == 2) {
                                                x = 200;
                                              } else {
                                                x = 380;
                                              }
                                      
                                              int y = 15 + (index * 180);
                                      
                                              return Positioned(
                                                left: x.toDouble(),
                                                top: y.toDouble(),
                                                child: BotonCurso(letra: consonantes[index])
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
                                    width: 540.0,
                                    height: 3780.0,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        const Image(image: AssetImage('assets/img/caminoSilabas.png'), width: 540.0, height: 3780.0),
                                        SizedBox(
                                          width: 540.0,
                                          height: 3780.0,
                                          child: Stack(
                                            children: List.generate(silabas.length, (index) {

                                              int x;
                                              if (index % 4 == 0) {
                                                x = 200;
                                              } else if (index % 4 == 1) {
                                                x = 20;
                                              } else if (index % 4 == 2) {
                                                x = 200;
                                              } else {
                                                x = 380;
                                              }
                                      
                                              int y = 15 + (index * 180);
                                      
                                              return Positioned(
                                                left: x.toDouble(),
                                                top: y.toDouble(),
                                                child: BotonCurso(letra: silabas[index])
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
                                    width: 540.0,
                                    height: 2160.0,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        const Image(image: AssetImage('assets/img/caminoCompuestas.png'), width: 540.0, height: 2160.0),
                                        SizedBox(
                                          width: 540.0,
                                          height: 2160.0,
                                          child: Stack(
                                            children: List.generate(silabasCompuestas.length, (index) {

                                              int x;
                                              if (index % 4 == 0) {
                                                x = 200;
                                              } else if (index % 4 == 1) {
                                                x = 20;
                                              } else if (index % 4 == 2) {
                                                x = 200;
                                              } else {
                                                x = 380;
                                              }
                                      
                                              int y = 15 + (index * 180);
                                      
                                              return Positioned(
                                                left: x.toDouble(),
                                                top: y.toDouble(),
                                                child: BotonCurso(letra: silabasCompuestas[index])
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
              Padding(padding: const EdgeInsets.only(top: 29.0, bottom: 29.0),
                child: SingleChildScrollView(
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
                        onTap: (index) {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                        controller: _tabController,
                        splashBorderRadius: BorderRadius.circular(50.0),
                        indicatorPadding: const EdgeInsets.symmetric(vertical: 10.0),
                        unselectedLabelColor: const Color.fromRGBO(126, 132, 148, 1),
                        labelColor: Colors.white,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
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
              )
            ],
          ),
          ],
        )
      );
    }
  }