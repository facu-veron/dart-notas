void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('wind: ${chargePhone(windPlant)}');
  
  print('nuclear${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enought energy');
  }
  
  return plant.energyLeft - 10;
}


enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
 final PlantType type; //nuclear, win, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}
// extends o implements

// En Dart, extends e implements son palabras clave que se utilizan para establecer relaciones entre clases.

//extends:
//Se utiliza para establecer una relación de herencia entre una clase hija (subclase) y una clase padre (superclase).
//La clase hija hereda todos los campos y métodos de la clase padre.
// Puede haber una única relación de extends, lo que significa que una clase solo puede heredar de una única clase padre.

//Ejemplo de extends:
//class Animal {
//void hacerSonido() {
//print('Sonido genérico');
//}
//}

//class Perro extends Animal {
// @override
// void hacerSonido() {
//  print('El perro ladra');
// }
//}

//En este ejemplo, Perro extiende Animal, por lo que hereda el método hacerSonido() de la clase Animal.

// implements:
//  Se utiliza para establecer una relación de implementación entre una clase y una interfaz.
//    Una clase que implementa una interfaz debe proporcionar implementaciones para todos los métodos declarados en la interfaz.
//    Puede haber múltiples relaciones de implements, lo que significa que una clase puede implementar múltiples interfaces.
// Ejemplo de implements:
//abstract class Animal {
//  void hacerSonido();
//}

//class Perro implements Animal {
// @override
//  void hacerSonido() {
//    print('El perro ladra');
// }
//}

//En este ejemplo, Perro implementa la interfaz Animal, por lo que debe proporcionar una implementación para el método hacerSonido() definido en la interfaz Animal.

//En resumen, extends se utiliza para establecer relaciones de herencia entre clases, mientras que implements se utiliza para establecer relaciones de implementación entre una clase y una interfaz.

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// extends o implements

// En Dart, extends e implements son palabras clave que se utilizan para establecer relaciones entre clases.

//extends:
//Se utiliza para establecer una relación de herencia entre una clase hija (subclase) y una clase padre (superclase).
//La clase hija hereda todos los campos y métodos de la clase padre.
// Puede haber una única relación de extends, lo que significa que una clase solo puede heredar de una única clase padre.

//Ejemplo de extends:
//class Animal {
//void hacerSonido() {
//print('Sonido genérico');
//}
//}

//class Perro extends Animal {
// @override
// void hacerSonido() {
//  print('El perro ladra');
// }
//}

//En este ejemplo, Perro extiende Animal, por lo que hereda el método hacerSonido() de la clase Animal.

// implements:
//  Se utiliza para establecer una relación de implementación entre una clase y una interfaz.
//    Una clase que implementa una interfaz debe proporcionar implementaciones para todos los métodos declarados en la interfaz.
//    Puede haber múltiples relaciones de implements, lo que significa que una clase puede implementar múltiples interfaces.
// Ejemplo de implements:
//abstract class Animal {
//  void hacerSonido();
//}

//class Perro implements Animal {
// @override
//  void hacerSonido() {
//    print('El perro ladra');
// }
//}


// Implements: 

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;

  final PlantType type = PlantType.nuclear;
    @override
  NuclearPlant({required this.energyLeft});
  
  @override 
  void consumeEnergy(double amount){
    energyLeft -= (amount * 5);
  }
  
}
