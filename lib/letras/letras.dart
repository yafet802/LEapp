import 'package:flutter/material.dart';

class Letra {
  final String letra;
  final Color colorHabilitado;
  final Color colorHabilitadoSecundario;
  final bool desbloqueado;

  Letra(
    this.letra, 
    this.colorHabilitado,
    this.colorHabilitadoSecundario,
    this.desbloqueado
  );
}

List<Letra> vocales = [
  Letra('A', const Color.fromRGBO(204, 52, 141, 1), const Color.fromRGBO(163, 42, 113, 1), true),
  Letra('E', const Color.fromRGBO(204, 52, 141, 1), const Color.fromRGBO(163, 42, 113, 1), false),
  Letra('I', const Color.fromRGBO(204, 52, 141, 1), const Color.fromRGBO(163, 42, 113, 1), false),
  Letra('O', const Color.fromRGBO(204, 52, 141, 1), const Color.fromRGBO(163, 42, 113, 1), false),
  Letra('U', const Color.fromRGBO(204, 52, 141, 1), const Color.fromRGBO(163, 42, 113, 1), false),
];

List<Letra> consonantes = [
  Letra('M', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), true),
  Letra('S', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('T', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('L', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('R', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('P', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('N', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('C', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('D', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('V', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('F', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('B', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('J', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('Ñ', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('G', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('H', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('Ch', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('Ll', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('Q', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('Y', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('K', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('X', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
  Letra('W', const Color.fromRGBO(206, 130, 255, 1), const Color.fromRGBO(165, 104, 204, 1), false),
];

List<Letra> silabas= [
  Letra('M', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), true),
  Letra('S', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('T', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('L', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('R', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('P', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('N', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('C', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('D', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('V', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('F', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('B', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('J', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('Ñ', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('G', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('H', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('Ch', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('Ll', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('Q', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('Y', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
  Letra('G', const Color.fromRGBO(255, 171, 51, 1), const Color.fromRGBO(212, 141, 39, 1), false),
];

List<Letra> silabasCompuestas = [
  Letra('Tr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), true),
  Letra('Bl', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Br', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Pl', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Pr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Fl', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Fr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Gl', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Gr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Cl', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Cr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
  Letra('Dr', const Color.fromRGBO(0, 205, 156, 1), const Color.fromRGBO(0, 164, 125, 1), false),
];