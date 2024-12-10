import 'package:flutter/material.dart';
import 'package:leapp/database/db.dart';
import 'package:leapp/database/palabras.dart';

class TestBD extends StatefulWidget {
  const TestBD({super.key});

  @override
  State<TestBD> createState() => _TestBDState();
}

class _TestBDState extends State<TestBD> {
  final Palabra _palabra = Palabra(palabra: "", imagen: "", audio: "");

  _addPalabras(Palabra palabra) async {
    if (palabra.palabra == "" || palabra.imagen == "" || palabra.audio == "") return;
    await DB.instance.insert(palabra);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Palabra agregada"), duration: Duration(seconds: 1))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
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
        const Text("Palabra"),
        TextField(
          onChanged: (value) {
          _palabra.palabra = value;
        },),
        const SizedBox(height: 10),
        const Text("Imagen"),
        TextField(
          onChanged: (value) {
          _palabra.imagen = value;
        },),
        const SizedBox(height: 10),
        const Text("Audio"),
        TextField(
          onChanged: (value) {
          _palabra.audio = value;
        },),
        const SizedBox(height: 10),
        MaterialButton(
          child: const Text("Agregar"),
          onPressed: (){
            _addPalabras(_palabra);
          }
        )
      ],
    );
  }

  Widget _listaPalabras() {
    return FutureBuilder(
      future: DB.instance.getAllPalabras(),
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
        Text(palabra.palabra),
        Text(palabra.imagen),
        Text(palabra.audio),
        ElevatedButton(onPressed: () async {
          await DB.instance.delete(palabra.id!);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Palabra eliminada"), duration: Duration(seconds: 1))
          );
        }, child: const Icon(Icons.delete))
      ],
    );
  }
}