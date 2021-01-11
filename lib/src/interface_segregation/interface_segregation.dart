abstract class Animal {
  void eat();
  void sleep();
}

abstract class FlyInterface {
  void fly();
}

class Bird implements Animal, FlyInterface {
  @override
  void eat() {
    //eat
  }

  @override
  void fly() {
    //fly
  }

  @override
  void sleep() {
    //sleep
  }
}

class Dog implements Animal {
  @override
  void eat() {
    //eat
  }

  @override
  void sleep() {
    //sleep
  }
}
