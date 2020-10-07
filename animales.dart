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

class Eat {
  //métodos
  void comer() {
    print('estoy comiendo');
  }
}

class Reproduce {
  //métodos
  void reproducir() {
    print('me estoy reproduciendo');
  }
}

class Gesta {
  //métodos
  void gestando() {
    print('estoy gestando');
  }
}
// Fin de clases que usaremos como mixin

class Dolphin extends Mammal with Swim, Eat, Reproduce, Gesta {
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

class Bat extends Mammal with Fly, Eat, Reproduce {
  //atributos
  int longitud_pico;

  Bat(
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

class Cat extends Mammal with Walk, Eat, Reproduce {
  //atributos
  int longitud_pico;

  Cat(
      {this.longitud_pico = 0,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String color = 'Blanco',
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

class Fish extends Animal {
  //atributos
  int longitud_pico;

  Fish(
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

class Dove extends Bird with Walk, Fly, Eat, Reproduce {
  Dove(
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

class Shark extends Fish with Swim, Eat, Reproduce {
  Shark(
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

class FlyingFish extends Fish with Swim, Eat, Reproduce, Fly {
  FlyingFish(
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
  //final Animal animal = Animal(nombre: 'Dumbo', sexo: 'Macho');
  //print(animal);

  //final Mammal elefante = Mammal(nombre: 'Dumbo', sexo: 'Hembra');

  Dolphin delfin = Dolphin(nombre: 'Delfin', sexo: 'Macho');
  print(delfin);
  delfin.comer();
  delfin.nadar();

  Cat gato = Cat(nombre: 'Gato', sexo: 'Hembra');
  print(gato);
  gato.caminar();
  gato.comer();
  gato.reproducir();

  Bat vampiro = Bat(nombre: 'Murcielago', sexo: 'Hembra');
  print(vampiro);
  vampiro.volar();
  vampiro.comer();
  vampiro.reproducir();

  Duck lucas = Duck(nombre: 'Pato Donald', sexo: 'Macho');
  print(lucas);
  lucas.nadar();
  lucas.caminar();
  lucas.volar();

  Dove paloma = Dove(nombre: 'Paloma', sexo: 'Hembra');
  print(paloma);
  paloma.comer();
  paloma.volar();
  paloma.reproducir();

  Shark tiburon = Shark(nombre: 'Tiburoncin', sexo: 'Macho');
  print(tiburon);
  tiburon.nadar();
  tiburon.comer();
  tiburon.reproducir();

  FlyingFish pezvolador = FlyingFish(nombre: 'Pez Volador', sexo: 'Hembra');
  print(pezvolador);
  pezvolador.volar();
  pezvolador.comer();
  pezvolador.reproducir();
  pezvolador.nadar();
}
