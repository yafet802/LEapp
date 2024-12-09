import 'package:flutter/material.dart';
import 'package:leapp/overlays/overlay_alumno.dart';

class ApartadoAlumno extends StatelessWidget {
  const ApartadoAlumno({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 18.0),
      child: GestureDetector(
        onTap: () {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return const Dialog(
                backgroundColor: Colors.transparent,
                child: OverlayAlumno()
              );
            },
          );
        },
        child: Container(
          width: double.maxFinite,
          height: 200.0,
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
                        child: const Center(child: Text('Curso', style: TextStyle(color: Color.fromRGBO(126, 132, 148, 1), fontFamily: 'Poppins-SemiBold', fontSize: 22.0))),//Este Text necesito que cambie conforme a al otro container
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
                                  color: const Color.fromRGBO(88, 204, 2, 1),
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromRGBO(88, 204, 2, 1).withOpacity(0.2),
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
                  width: 80.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(218, 224, 240, 1),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(126, 132, 148, 1),
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                      ),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(126, 132, 148, 1),
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                      ),
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(126, 132, 148, 1),
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                      ),
                    ],
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
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/img/FotoPerfilAlumno.png'), width: 110.0, height: 110.0)),
                      ),
                      const Text('Nombre Alumno', style: TextStyle(color: Colors.black, fontFamily: 'Poppins-SemiBold', fontSize: 36.0))
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}