void main() {
  int tabla_del;
  int por;
  for (tabla_del = 1; tabla_del <= 10; tabla_del++) {
    print("\nTabla del $tabla_del:");
    for (por = 1; por <= 10; por++) {
      print('$tabla_del * $por = ${tabla_del * por}');
    }
  }
}
