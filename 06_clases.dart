void main() {
  // Creamos la instancia de la clase heroe
  
  // Lo hacemos asi por los parametros por nombre de la clase anterior.
  final Hero wolverine = new Hero(name: 'Logan', power:'Regeneracion');
  print(wolverine.toString());
  print(wolverine.name);
  
  
}

class Hero {
// Las propiedades no pueden ser nulas y deben llevar el tipo de dato.
// Dart es exigente con el nullsafety y las propiedades siempre tienen que tener un valor o aclarar que son opcionales.

// Evitar errores en tiempo de ejecución: El sistema de null safety en Dart ayuda a prevenir errores comunes relacionados con los valores nulos que podrían provocar excepciones en tiempo de ejecución. Al hacer que los atributos de una clase sean no nulos de forma predeterminada, se reducen significativamente las posibilidades de que se produzcan excepciones relacionadas con valores nulos.

// Mejor legibilidad y mantenibilidad del código: Al especificar explícitamente si un atributo puede ser nulo o no, se hace más claro para otros desarrolladores (y para ti mismo en el futuro) cuál es el contrato de uso de esa clase. Esto mejora la legibilidad y facilita el mantenimiento del código a medida que el proyecto crece.

// Mejora la robustez del código: Al obligar a los desarrolladores a manejar explícitamente los casos en los que un valor puede ser nulo, Dart fomenta la escritura de código más robusto que considera todos los posibles estados y escenarios de error.

// Promueve mejores prácticas de programación: La null safety en Dart promueve el diseño de API más seguro y reduce la necesidad de verificar constantemente los valores nulos en tiempo de ejecución, lo que lleva a una programación más limpia y eficiente.

// En resumen, la estricta null safety en Dart en la declaración de atributos de una clase es una característica diseñada para mejorar la seguridad y la calidad del código, reduciendo la posibilidad de errores en tiempo de ejecución y facilitando el mantenimiento del código a largo plazo.
  String name;
  String power;
  
  // Necesitamos inicializar esas propiedades cuando se crea la nueva instancia.
  
  // Lo hacemos mediante el constructor que lleva el nombre de la clase.
  // Hero(String pName, String pPower){
  // la palaba this es opcional.
  // this.name = pName;
  // this.power = pPower;
  //}
  
  // Hacerlo asi puede dervar en un error ya que en el momento en que el constructor se esta llamando la inicializacion de las propiedades ya se cargaron como nulas. esto pasa porque la clase no espera a que el constructor este listo. por eso es mejor hacerlo de la siguent e manera con el : le decimos que en el momento que se esta creando la clase queremos asignarles valores a las propiedades.
  
  //Hero(String pName, String pPower)
  // : name = pName,
  // power = pPower;
  
  // otra forma de hacerlo es de la siguiente manera.
  // Hero(this.name, this.power); // tambien se les puede pasar argumentos por nombre
  Hero({required this.name, this.power= "Sin poder"});
  
  
 // La función de override es un mecanismo importante en la programación orientada a objetos, ya que permite hacer todo tipo de ajustes sin tener que cambiar su código fuente original.
  @override
  // Si no se le coloca el override esto va a funcionar pero nos dara un warning
  toString(){
    return 'Hola Mundo!';
  }
  
}
