import 'package:flutter/material.dart';

class EspacioPalabras extends StatefulWidget {
  final String palabra;
  const EspacioPalabras({required this.palabra, super.key});

  @override
  State<EspacioPalabras> createState() => _EspacioPalabrasState();
}

class _EspacioPalabrasState extends State<EspacioPalabras> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 63),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 40.0,
        ),
        height: 120.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(218, 224, 240, 1),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                  fit: BoxFit.fill,
                  child: Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 241, 255, 1),
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 5),
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: RichText(
                            text: TextSpan(
                              children: widget.palabra.characters.map((char) {
                                return TextSpan(
                                  text: char,
                                  style: TextStyle(
                                    color:
                                        char == 'a' ? const Color.fromRGBO(125, 162, 255, 1): Colors.black,
                                    fontFamily: 'Poppins-SemiBold',
                                    fontSize: 64.0,
                                    letterSpacing: 25.0,
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      )));
            },
          ),
        ),
      ),
    );
  }
}
