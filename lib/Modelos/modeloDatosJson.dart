class Palabra {
  final String palabra;
  final String imagen;
  final String audio;

  Palabra({
    required this.palabra,
    required this.imagen,
    required this.audio,
  });

  factory Palabra.fromJson(Map<String, dynamic> json) {
    return Palabra(
      palabra: json['palabra'],
      imagen: json['imagen'],
      audio: json['audio'],
    );
  }
}
