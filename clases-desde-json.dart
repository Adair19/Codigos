import 'dart:convert';

class Mamifero {
  String nombre;
  int edad;
  int pesokg;

  Mamifero({this.nombre, this.edad, this.pesokg});

  Mamifero.fromJson(Map<String, dynamic> parsedJson) {
    this.nombre = parsedJson['nombre'];
    this.edad = parsedJson['edad'];
    this.pesokg = parsedJson['pesokg'];
  }

  String toString() {
    return 'Nombre: ${this.nombre}, edad: ${this.edad}, peso: ${this.pesokg}';
  }
}

void main() {
  String rawJson = '{"nombre":"elefante", "edad":16, "pesokg":1234}';
  Map parsedJson = json.decode(rawJson);
  // Mamifero elefante = new Mamifero(
//nombre: parsedJson['nombre'],
//edad: parsedJson['edad'],
//pesokg: parsedJson['pesokg']);

  Mamifero elefante = new Mamifero.fromJson(parsedJson);
  print(elefante);

  //print('Nombre: ${parsedJson['nombre']}');
  //print(parsedJson['edad']);
  //print(parsedJson['pesokg']);
  //final Mamifero elefante = new Mamifero();
  //print(elefante);
}
