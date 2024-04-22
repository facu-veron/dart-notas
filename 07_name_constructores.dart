void main() {
  
  
  
  final Map <String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'Power': 'Money',
    'isAlive': true
  };
  
  final ironman2 = Hero.fromJson(rawJson);
  
  
 final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');
  
  print(ironman2);
  print(ironman.toString());
}


class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  // Constructores por nombre.
  // Tener cuidado con el dynamic porque puede llegar algo null
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  
  
  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'NO'}';
  }
}
