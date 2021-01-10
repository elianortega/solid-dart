abstract class DuckInterface {
  void fly();
  String swim();
  String quack();
}

class RubberDucks implements DuckInterface {
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

abstract class QuackInterface {
  String quack();
}

abstract class FlyInterface {
  String fly();
}

abstract class SwimInterface {
  String swim();
}

class RubberDuck implements QuackInterface, SwimInterface {
  @override
  String quack() {
    return "Quack!!!";
  }

  @override
  String swim() {
    return "Duck Swimming";
  }
}
