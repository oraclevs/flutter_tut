// a simple dart class
class Animal {}

// a class with a constructor
class Dog {
  int age;
  String name;
  //  a class constructor
  Dog({required this.age, required this.name});
}

// a class with methods

class Cat {
  int age;
  String name;
  String color;
  //  a class constructor
  Cat({required this.age, required this.name, required this.color});

  //  a method
  void Print() {
    print("Cat name is $name, age is $age and color is $color");
  }
}







void main() {
  Animal();
Cat(age: 4, name: "Tom", color: "Black").Print();
}





