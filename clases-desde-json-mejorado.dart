import 'dart:convert';

class Mamifero {
  String nombre;
  int edad;
  int pesokg;

  Mamifero({this.nombre, this.edad, this.pesokg});

  Mamifero.fromJson(Map<String, dynamic> parsedJson) {
    nombre = parsedJson['nombre'];
    edad = parsedJson['edad'];
    pesokg = parsedJson['pesokg'];
  }

  String toString() {
    return 'Nombre: $nombre, edad: $edad, peso: $pesokg';
  }
}

void main() {
  String rawJson = '{"nombre":"elefante", "edad":16, "pesokg":1234}';
  Map parsedJson = json.decode(rawJson);
  Mamifero elefante = new Mamifero.fromJson(parsedJson);
  print(elefante);

  String rawJson2 = '{"nombre":"delfin", "edad":7, "pesokg":1}';
  Map parsedJson2 = json.decode(rawJson2);
  Mamifero unMamifero = new Mamifero.fromJson(parsedJson2);
  print(unMamifero);
}
