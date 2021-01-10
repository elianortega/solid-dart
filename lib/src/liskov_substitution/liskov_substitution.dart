abstract class DuckInterface {
  void fly();
  String swim();
  String quack();
}

class RubberDuck implements DuckInterface {
  @override
  void fly() {
    throw Exception("Rubber duck can't fly");
  }

  @override
  String quack() {
    return "Quack!!!";
  }

  @override
  String swim() {
    return "Duck Swimming";
  }
}

class BatteriesDuck implements DuckInterface {
  @override
  void fly() {
    throw Exception("Rubber duck can't fly");
  }

  @override
  String quack() {
    return "Quack!!!";
  }

  @override
  String swim() {
    return "Duck Swimming";
  }
}
