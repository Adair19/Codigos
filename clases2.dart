class Persona {
  //propiedades
  String nombre;
  String primer_apellido;
  String segundo_apellido;
  String sexo;
  int edad;

/*  Persona(String nombre, String primer_apellido, String segundo_apellido,
      String sexo, int edad) {
    this.nombre = nombre;
    this.primer_apellido = primer_apellido;
    this.segundo_apellido = segundo_apellido;
    this.sexo = sexo;
    this.edad = edad;
  }
*/
  Persona(
      {this.nombre,
      this.primer_apellido,
      this.segundo_apellido,
      this.sexo,
      this.edad});
  //metodo
  String toString() {
    return 'nombre: ${this.nombre}, primer_apellido: ${this.primer_apellido}';
  }
}

void main() {
  //final Persona benito = new Persona();
  Persona benito = new Persona(
      nombre: 'benito',
      primer_apellido: 'juarez',
      segundo_apellido: 'garcia',
      sexo: 'h',
      edad: 36);
  print(benito);
}
