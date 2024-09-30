
class Animal {
  String sound() {
    return "";
  }

  String eat() {
    return "";
  }
}

class Dog extends Animal {
  @override
  String sound() {
    return "Woof!";
  }

  @override
  String eat() {
    return "Dog eating food.";
  }
}

class Cat extends Animal {
  @override
  String sound() {
    return "Nyaaaa~";
  }

  @override
  String eat() {
    return "Cat eating food.";
  }
}
