class Palabra {
  int? id;
  String palabra;
  String imagen;
  String audio;

  Palabra({this.id, required this.palabra, required this.imagen, required this.audio});

  Map<String, dynamic> toMap() {
    return {'id': id, 'palabra': palabra, 'imagen': imagen, 'audio': audio};
  }
}

