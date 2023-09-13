class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print('Animal $name makes a sound.');
  }

  void sleep() {
    print('Animal $name is sleeping.');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void speak() {
    print('Dog $name barks.');
  }

  void wagTail() {
    print('Dog $name is wagging its tail.');
  }
}

void main() {
  var dog = Dog('Buddy', 3, 'Golden Retriever');

  dog.speak();      // Calls Dog's speak method
  dog.sleep();      // Calls Animal's sleep method using super
  dog.wagTail();    // Calls Dog's wagTail method
}