import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:leapp/components/botones/boton_ilustracion.dart';
import 'package:leapp/components/botones/boton_opcion.dart';

class MyWidget extends StatefulWidget {
  final String rutaImagen;
  final String rutaSonido;
  //final VoidCallback onOpcionSeleccionada;//PARA HACER EL ESTADOP DEL BOTON

  //final String letraCorrecta = 'a';
  final Function(String) onOpcionSeleccionada;

  ////
  MyWidget(
      {required this.rutaImagen,
      required this.rutaSonido,
      required this.onOpcionSeleccionada,
      super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //PARA QUE SALGAN ALEATORIAS LAS LETRAS aqui se guardan
  List<Map<String, dynamic>> letras = [];
  List<String> mezcladas = [];
  final player = AudioPlayer();

  ////
  int? botonSeleccionado;

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  ///CARGAR JSON DE VOCALES Y hacer una lis aleatoria de letras
  Future<void> loadJsonData() async {
    setState(() {
      List<String> letras = ['e', 'o', 'i', 'u'];
      letras.shuffle(); //aqui se mezclan
      mezcladas = letras; //toma 4 letras al azar //SIN LA a
      mezcladas.removeLast();
      //mezcladas.add(aLetra);//PARA QUE LA A SIEMPRE ESTE? //AGREGAMOS LA a// ESTE DEREPENTE NO SACA LAS a
      mezcladas.add('a');

      mezcladas
          .shuffle(); //mezclar para poner aleatoria la posicion //se mezcla con la a
    });
  }

  ///////////
  void _handleOpcionSeleccionada(int index, String letraSeleccionada) {
    setState(() {
      botonSeleccionado = index;
    });
    widget
        .onOpcionSeleccionada(letraSeleccionada); // Pasar el valor seleccionado
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      child: Column(children: [
        BotonIlustracion(
          onTap: () async {
            await player.play(AssetSource(widget.rutaSonido));
          },
          imagen: widget.rutaImagen,
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          color: Colors.grey[400], // Color del divider
          height: 20, // Espacio vertical que ocupa el divider
          thickness: 2, // Grosor del divider
          indent: 10, // Espacio antes del divider
          endIndent: 10, // Espacio después del divider
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonOpcion(
                  habilitado: botonSeleccionado == 0,
                  index: 0,
                  letra: mezcladas[0],
                  onTap: (p0, p1) {
                    _handleOpcionSeleccionada(0,
                        mezcladas[0]); //EL ESTADO DEL BOTON-SI FUE SELECCIONADO
                    print(p1);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                BotonOpcion(
                  habilitado: botonSeleccionado == 1,
                  index: 1,
                  letra: mezcladas[1],
                  onTap: (p0, p1) {
                    _handleOpcionSeleccionada(1, mezcladas[1]);
                    print(p1);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonOpcion(
                  habilitado: botonSeleccionado == 2,
                  index: 2,
                  letra: mezcladas[2],
                  onTap: (p0, p1) {
                    _handleOpcionSeleccionada(2, mezcladas[2]);
                    print(p1);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                BotonOpcion(
                  habilitado: botonSeleccionado == 3,
                  index: 3,
                  letra: mezcladas[3],
                  onTap: (p0, p1) {
                    _handleOpcionSeleccionada(3, mezcladas[3]);
                    print(p1);
                  },
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
