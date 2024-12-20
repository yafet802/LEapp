import 'package:flutter/material.dart';
import 'package:leapp/database/db.dart';
import 'package:leapp/database/palabra.dart';

class CRUDa extends StatefulWidget {
  const CRUDa({super.key});

  @override
  State<CRUDa> createState() => _CRUDaState();
}

class _CRUDaState extends State<CRUDa> {
  final Palabra _palabra = Palabra(palabra: "", imagen: "", audio: "");
  final TextEditingController _palabraController = TextEditingController();

  _addPalabras(TextEditingController value) async {
    if (value.text == "") return;
    _palabra.palabra = value.text;
    _palabra.imagen = 'assets/img/${value.text}.png';
    _palabra.audio = 'audio/${value.text}.mp3';
    _palabraController.clear();
    await DB.instance.insertPalabra("palabras_a", _palabra);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Palabra agregada"), duration: Duration(seconds: 1))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 550,
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _formPalabra(),
            const SizedBox(height: 50),
            _listaPalabras()
          ],
        ),
      ),
    );
  }

  Widget _formPalabra() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Palabras A", style: TextStyle(fontSize: 30)),
        const SizedBox(height: 10),
        TextField(
          controller: _palabraController,
          style: const TextStyle(fontSize: 25),
          decoration: const InputDecoration(
            label: Text("Palabra", style: TextStyle(fontSize: 25))
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text("Agregar", style: TextStyle(fontSize: 25),),
          onPressed: (){
            _addPalabras(_palabraController);
          }
        )
      ],
    );
  }

  Widget _listaPalabras() {
    return FutureBuilder(
      future: DB.instance.getAllPalabras("palabras_a"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var listaPalabras = snapshot.data!;
          return listaPalabras.isEmpty
            ? const Center(
                child:
                    Text("No hay palabras", style: TextStyle(fontSize: 30)))
            : Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return _formatPalabra(listaPalabras[index]);
                  }, 
                  separatorBuilder: (context, index) {
                    return const Column(
                      children: [
                        SizedBox(height: 10),
                        Divider(height: 20),
                        SizedBox(height: 10)
                      ],
                    );
                  }, 
                  itemCount: listaPalabras.length
                ),
            );
        } else {
          return const Center(
                child:
                    Text("No hay palabras", style: TextStyle(fontSize: 30)));
        }
      },
    );
  }

  Widget _formatPalabra(Palabra palabra) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(palabra.palabra, style: const TextStyle(fontSize: 20)),
        Text(palabra.imagen, style: const TextStyle(fontSize: 20)),
        Text(palabra.audio, style: const TextStyle(fontSize: 20)),
        ElevatedButton(onPressed: () async {
          await DB.instance.deletePalabra("palabras_a", palabra.id!);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Palabra eliminada"), duration: Duration(seconds: 1))
          );
        }, child: const Icon(Icons.delete))
      ],
    );
  }
}