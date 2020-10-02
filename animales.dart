class Animal {
  //atributos
  String nombre;
  String sexo;
  String color;
  String alimentacion;
  String habitat;
  String region;
  int altura;
  int peso;
  int edad;
  int longevidad;
  int numero_crias;
  int periodo_gestacion;
  int temperatura_corporal;

  Animal(
      {this.nombre = 'desconocido',
      this.sexo = 'desconocido',
      this.color = 'desconocido',
      this.alimentacion = 'desconocido',
      this.habitat = 'desconocido',
      this.region = 'desconocido',
      this.altura = 0,
      this.peso = 0,
      this.edad = 0,
      this.longevidad = 0,
      this.numero_crias = 0,
      this.periodo_gestacion = 0,
      this.temperatura_corporal = 0});

  //métodos
  String toString() {
    return '$nombre, $sexo';
  }

  void comer() {
    print('$nombre: estoy comiendo');
  }

  void gestar() {
    if ('Hembra' == sexo) {
      print('$nombre: estoy gestando');
    } else {
      print('Ups!');
    }
  }

  void reproducir() {
    print('$nombre: estoy reproduciendo');
  }

  void defecar() {
    print('$nombre: estoy defecando');
  }

  void dormir() {
    print('$nombre: estoy durmiendo');
  }

  void despertar() {
    print('$nombre: estoy despertando');
  }
}

class Mammal extends Animal {
  //atributos PROPIOS/DE TODOS los mamíferos
  String color_pelo;
  int glandulas_mamarias;

  Mammal(
      {this.color_pelo = 'desconocido',
      this.glandulas_mamarias = 0,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String color = 'desconocido',
      String alimentacion = 'desconocido',
      String habitat = 'desconocido',
      String region = 'desconocido',
      int altura = 0,
      int peso = 0,
      int edad = 0,
      int longevidad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int temperatura_corporal = 0})
      : super(
            nombre: nombre,
            sexo: sexo,
            color: color,
            alimentacion: alimentacion,
            habitat: habitat,
            region: region,
            altura: altura,
            peso: peso,
            edad: edad,
            longevidad: longevidad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            temperatura_corporal: temperatura_corporal);

  //métodos PROPIOS/DE TODOS los mamíferos
  void amamantar() {
    if ('Hembra' == sexo) {
      print('$nombre: estoy amamantando');
    } else {
      print('Ups!');
    }
  }
}

// Clases que usaremos como mixin
class Swim {
  //métodos
  void nadar() {
    print('estoy nadando');
  }
}

class Walk {
  //métodos
  void caminar() {
    print('estoy caminando');
  }
}

class Fly {
  //métodos
  void volar() {
    print('estoy volando');
  }
}

// Fin de clases que usaremos como mixin

class Dolphin extends Mammal with Swim {
  Dolphin(
      {String color_pelo = 'gris',
      int glandulas_mamarias = 0,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String color = 'gris',
      String alimentacion = 'pequeños peces',
      String habitat = 'mar',
      String region = 'mares aguas templadas',
      int altura = 0,
      int peso = 120,
      int edad = 0,
      int longevidad = 0,
      int numero_crias = 1,
      int periodo_gestacion = 8,
      int temperatura_corporal = 35})
      : super(
            color_pelo: color_pelo,
            glandulas_mamarias: glandulas_mamarias,
            nombre: nombre,
            sexo: sexo,
            color: color,
            alimentacion: alimentacion,
            habitat: habitat,
            region: region,
            altura: altura,
            peso: peso,
            edad: edad,
            longevidad: longevidad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            temperatura_corporal: temperatura_corporal);
}

class Bird extends Animal {
  //atributos
  int longitud_pico;

  Bird(
      {this.longitud_pico = 0,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String color = 'desconocido',
      String alimentacion = 'desconocido',
      String habitat = 'desconocido',
      String region = 'desconocido',
      int altura = 0,
      int peso = 0,
      int edad = 0,
      int longevidad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int temperatura_corporal = 0})
      : super(
            nombre: nombre,
            sexo: sexo,
            color: color,
            alimentacion: alimentacion,
            habitat: habitat,
            region: region,
            altura: altura,
            peso: peso,
            edad: edad,
            longevidad: longevidad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            temperatura_corporal: temperatura_corporal);
}

class Duck extends Bird with Swim, Walk, Fly {
  Duck(
      {int longitud_pico = 0,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String color = 'desconocido',
      String alimentacion = 'desconocido',
      String habitat = 'desconocido',
      String region = 'desconocido',
      int altura = 0,
      int peso = 0,
      int edad = 0,
      int longevidad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int temperatura_corporal = 0})
      : super(
            longitud_pico: longitud_pico,
            nombre: nombre,
            sexo: sexo,
            color: color,
            alimentacion: alimentacion,
            habitat: habitat,
            region: region,
            altura: altura,
            peso: peso,
            edad: edad,
            longevidad: longevidad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            temperatura_corporal: temperatura_corporal);
}

void main() {
  // final Animal animal = Animal(nombre: 'Dumbo', sexo: 'Macho');
  // print(animal);

  // final Mammal elefante = Mammal(nombre: 'Dumbo', sexo: 'Hembra');
  // final Dolphin delfin = Dolphin(nombre: 'Delfino', sexo: 'Hembra');
  // delfin.comer();
  // delfin.gestar();
  // delfin.reproducir();
  // delfin.amamantar();
  // delfin.nadar();

  Duck lucas = Duck(nombre: 'Pato Lucas', sexo: 'Masculino');
  print(lucas);
  lucas.nadar();
  lucas.caminar();
  lucas.volar();
}
