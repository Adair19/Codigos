bool es_par(int numero) {
  return 0 == numero % 2;
}

void main() {
  //var option = 2;
  //switch (option) {
  //case 1:
  //print('Es 1');
  //break;
  // case 2:
  // print('Es 2');
  // break;
  // default:
  // print('No es ninguno');
  //}
  switch (es_par(3)) {
    case true:
      print('Par');
      break;
    default:
      print('Impar');
  }
}
