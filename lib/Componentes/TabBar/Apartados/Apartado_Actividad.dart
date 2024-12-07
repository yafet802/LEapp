import 'package:flutter/material.dart';

class ApartadoActividad extends StatefulWidget {

  final String letra;
  final Color colorLetra;

  const ApartadoActividad({
    super.key,
    required this.letra,
    required this.colorLetra
  });

  @override
  State<ApartadoActividad> createState() => _ApartadoActividadState();
}

class _ApartadoActividadState extends State<ApartadoActividad> {

  double _containerHeight = 200.0;
  bool _showInnerContainer = false;

  void _toggleContainerHeight() {
    setState(() {
      _containerHeight = _containerHeight == 200.0 ? 530.0 : 200.0;
      _showInnerContainer = _containerHeight == 530.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 18.0),
      child: GestureDetector(
        onTap: () {
          _toggleContainerHeight();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 125),
          width: double.maxFinite,
          height: _containerHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 6),
                blurRadius: 40.0
              )
            ]
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(top: 152.0, left: 22.0, right: 22.0,
                child: _showInnerContainer 
                  ? Padding(padding: const EdgeInsets.only(bottom: 119.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 246.0,
                                  height: 43.0,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(218, 224, 240, 1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0)
                                    )
                                  ),
                                  child: const Align(alignment: Alignment.bottomCenter, child: Text('Completados', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0))),
                                ),
                                Container(
                                  width: 380.0,
                                  height: 217.0,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(218, 224, 240, 1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                    )
                                  ),
                                  child: Padding(padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 23.5),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Container(
                                              width: 403,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  const Positioned(left: 49.0,
                                                    child: Text('Lecciones', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                  Positioned(right: 49.0,
                                                    child: Text('00/00', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
                                              child: Container(
                                                width: 403,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(236, 241, 255, 1),
                                                  borderRadius: BorderRadius.circular(50.0),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.08),
                                                      offset: const Offset(0, 5),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 3.0
                                                    )
                                                  ]
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    const Positioned(left: 49.0,
                                                      child: Text('Ejercicios', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                    ),
                                                    Positioned(right: 49.0,
                                                      child: Text('00/00', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 403,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  const Positioned(left: 49.0,
                                                    child: Text('Examen', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                  Positioned(right: 49.0,
                                                    child: Text('00/00', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      )
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 246.0,
                                  height: 43.0,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(218, 224, 240, 1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0)
                                    )
                                  ),
                                  child: const Align(alignment: Alignment.bottomCenter, child: Text('Calificaciones', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0))),
                                ),
                                Container(
                                  width: 380.0,
                                  height: 217.0,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(218, 224, 240, 1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                    )
                                  ),
                                  child: Padding(padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 23.5),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Container(
                                              width: 403,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  const Positioned(left: 49.0,
                                                    child: Text('Ultima', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                  Positioned(right: 49.0,
                                                    child: Text('000', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
                                              child: Container(
                                                width: 403,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(236, 241, 255, 1),
                                                  borderRadius: BorderRadius.circular(50.0),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.08),
                                                      offset: const Offset(0, 5),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 3.0
                                                    )
                                                  ]
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    const Positioned(left: 49.0,
                                                      child: Text('Mejor', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                    ),
                                                    Positioned(right: 49.0,
                                                      child: Text('000', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 403,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(236, 241, 255, 1),
                                                borderRadius: BorderRadius.circular(50.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.08),
                                                    offset: const Offset(0, 5),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 3.0
                                                  )
                                                ]
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  const Positioned(left: 49.0,
                                                    child: Text('Examen', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                  Positioned(right: 49.0,
                                                    child: Text('000', style: TextStyle(color: widget.colorLetra, fontFamily: 'Poppins-SemiBold', fontSize: 23.0))
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ],
                          ),
                            
                      ],
                    ),
                  )
                  : const Center()
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 18.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 80.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 130.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                          )
                        ),
                        child: const Center(child: Text('00/00', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0))),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(218, 224, 240, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0)
                          )
                        ),
                        child: Padding(padding: const EdgeInsets.all(5.0),
                          child: Wrap(
                            children: [
                              Container(
                                width: 360.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: widget.colorLetra,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: widget.colorLetra.withOpacity(0.2),
                                      offset: const Offset(0, 5),
                                      blurRadius: 10.0,
                                      spreadRadius: 3.0
                                    )
                                  ]
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(right: 22.0, top: 18.0,
                child: Container(
                  width: 240.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(218, 224, 240, 1),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Padding(padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.only(right: 19.0),
                          child: Text('Repasado', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 20.0)),
                        ),
                        Container(
                          width: 80.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: widget.colorLetra,
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                color: widget.colorLetra.withOpacity(0.2),
                                offset: const Offset(0, 5),
                                blurRadius: 10.0,
                                spreadRadius: 3.0
                              )
                            ]
                          ),
                          child: const Center(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              spacing: 4.0,
                              children: [
                                Icon(Icons.refresh_rounded, color: Colors.white, size: 20.0),
                                Text('00', style: TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 20.0))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              Positioned(left: 35.0, top: 18.0,
                child: SizedBox(
                  child: Wrap(
                    spacing: 35.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: widget.colorLetra,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(
                              color: widget.colorLetra.withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 15.0,
                              spreadRadius: 3
                            )
                          ]
                        ),
                        child: Center(child: Text(widget.letra, style: const TextStyle(color: Colors.white, fontFamily: 'Poppins-SemiBold', fontSize: 48.0))),
                      ),
                      const Text('Titulo', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0))
                    ],
                  ),
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}