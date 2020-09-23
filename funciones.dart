void saludo(String nombre) {
  print('Hola $nombre');
}

void saludo2({String nombre = 'visitante desconocido'}) {
  print('Hola $nombre');
}

void saludoCompleto({String nombre, String apellido}) {
  //corechetes son parametros por nombre, para que no importe el orden del nombre y apellido al llamarlos.
  print('Hola $nombre $apellido');
}

int sumaDosNumeros(int numero1, int numero2) {
  return numero1 + numero2;
}

void main() {
  saludo('Benito');
  saludo2();
  saludo2(nombre: 'Gilipollas');
  print('La suma de 2 + 5 = ${sumaDosNumeros(2, 5)}');
  saludoCompleto(apellido: 'Juarez', nombre: 'Benito');
}
