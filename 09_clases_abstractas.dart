//En Dart, una clase abstracta es una clase que no se puede instanciar directamente, sino que se utiliza como un modelo para definir otras clases. Es decir, una clase abstracta proporciona una estructura básica y definiciones de métodos que deben implementarse en las clases hijas (subclases) que heredan de ella.

//Para definir una clase abstracta en Dart, se utiliza la palabra clave abstract antes de la palabra clave class. Además, es común que una clase abstracta contenga uno o más métodos abstractos, que son métodos sin implementación, es decir, métodos que no tienen un cuerpo y cuya implementación debe ser proporcionada por las clases hijas.

//Aquí tienes un ejemplo de cómo se define una clase abstracta en Dart:

abstract class Animal {
  void hacerSonido(); // Método abstracto
  void comer() {
    print('El animal come comida genérica.'); // Método con implementación
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print('El perro ladra.');
  }
}

class Gato extends Animal {
  @override
  void hacerSonido() {
    print('El gato maulla.');
  }
}

void main() {
  // No se puede instanciar una clase abstracta
  // Animal animal = Animal(); // Esto daría un error
  
  // Pero podemos crear instancias de las clases hijas
  var perro = Perro();
  var gato = Gato();
  
  perro.hacerSonido(); // Output: El perro ladra.
  gato.hacerSonido(); // Output: El gato maulla.
  perro.comer(); // Output: El animal come comida genérica.
  gato.comer(); // Output: El animal come comida genérica.
}
//En este ejemplo, Animal es una clase abstracta que define el método abstracto hacerSonido() y el método no abstracto comer(). Las clases Perro y Gato heredan de la clase Animal y deben implementar el método hacerSonido(), lo que hacen mediante el uso de la anotación @override. Las clases hijas también pueden optar por implementar o sobrescribir el método comer() si lo desean.

//Las clases abstractas son útiles para definir una jerarquía de clases y compartir comportamiento común entre ellas, al tiempo que permiten la flexibilidad de implementar comportamientos específicos en las clases hijas.
