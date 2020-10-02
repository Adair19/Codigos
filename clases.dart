class Persona {
  String nombre;
  String primerApellido;

  /* Persona(String nombre, String primerApellido) {
    this.nombre = nombre;
    this.primerApellido = 'Coronado';
  }   */

  Persona(this.nombre, this.primerApellido);

  String nombreCompleto() {
    return '${this.nombre} ${this.primerApellido}';
  }
}

/*
class BarraDeTitulo {}

class Menu {
  ElementosMenu menu = new ElementosMenu();
}

class ElementosMenu {
  EntradaMenu entradas = [];
}

class EntradaMenu {
  String opcion1;
  String metodoAbreviado;
  int color;
  bool habilitado;
}
*/
void main() {
  Persona benito = new Persona('Adair', 'Corona');
  print(benito.nombreCompleto());
}
