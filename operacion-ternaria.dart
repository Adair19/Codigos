void main() {
  int edad = 17;
  bool mayor_edad = 18 <= edad;
  String mayor_edad_cadena = mayor_edad ? 'Adullto' : 'infante';
  print(edad);
  print(mayor_edad);
  print(mayor_edad_cadena);

  int sexo = 1; // 1 = masculino, 2 = femenino
  print(1 == sexo ? 'Masculino' : 'Femenino');
}
