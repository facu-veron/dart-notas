// En Dart, los getters y setters son métodos especiales que se utilizan para acceder y modificar los valores de los campos de una clase de manera controlada.

// Un getter es un método que se utiliza para obtener el valor de un campo privado de una clase. Proporciona acceso de solo lectura a ese campo. Los getters se declaran utilizando la palabra clave get seguida del nombre del método.

// Un setter es un método que se utiliza para modificar el valor de un campo privado de una clase. Proporciona acceso de escritura a ese campo. Los setters se declaran utilizando la palabra clave set seguida del nombre del método.

void main() {
  final mySquare = Square(side: -10);

  mySquare.side = 5;

  print('area: ${mySquare.area}');
}

class Square {
  double _side; // side * side
  Square({required double side}) 
    // es recomendable que los asserts se inicialicen primero 
    : assert(side >= 0, 'Side must be >= 0'),
 // Los asserts son declaraciones que puedes utilizar en tu código para realizar comprobaciones de condiciones que esperas que sean verdaderas. Se utilizan principalmente durante el desarrollo y la depuración del programa para asegurarse de que ciertas suposiciones o condiciones se mantienen válidas.
  //En Dart, un assert se ve así:
  //assert(condición);
  //Donde condición es una expresión booleana que se espera que sea true. Si la condición es false, se lanzará una excepción AssertionError, lo que detendrá la ejecución del programa.
  
  //Los asserts son útiles para capturar errores en el código durante la fase de desarrollo y para garantizar la integridad de ciertas suposiciones sobre el estado del programa. Es importante tener en cuenta que los asserts se omiten cuando se compila el código con la bandera --release, lo que significa que no tienen ningún impacto en el rendimiento en producción.

  
// : assert(side >= 0), en este ejemplo el side debe ser mayor o igual a 0

  
  _side = side;
  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
