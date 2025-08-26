class Animal {
  Animal();

  void walk() {
    print('I can walk');
  }

  void run() {
    print('I can run');
  }
}

class Dog extends Animal {
  int age;
  String name;

  Dog({required this.age, required this.name});
}

class Human extends Animal {
  int age;
  String name;

  Human({required this.age, required this.name});

  void speak() {
    print('I can speak');
  }

  @override
  void walk() {
    print('I can walk on two legs');
  }
}

// an abstract class is a class that cannot be instantiated but can be extended
abstract class Shape {
  void draw();
  double size();

  void rotate() {
    print('I can rotate');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("I can be drawn");
  }

  @override
  double size() {
    return 0.7;
  }

}

void main() {
  Dog dog = Dog(age: 3, name: "Bingo");
  dog.walk();
  dog.run();

  Human human = Human(age: 25, name: "John");
  human.walk();
}

