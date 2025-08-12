// • Session 2: Dart syntax, variables, and data types

void main() {
  /* 
  
  Data types in dart
  1. String
  2. double
  3. int
  4 dynamic
  5. bool
  6. list
  7. map

  */

  int number = 6;
  double price = 9.99;
  bool isactive = false;
  List listofSomething = [];
  Map kvpair = {};
  String name = "Name of a person";
  dynamic noman = 77;

  print('$noman $number ${number + noman} $kvpair');

  // reassignment of variables
  number = 77877;
  number = noman;
  number = number + number;
  print(number);

  String car = "Car";
  String model = "BMW";

  String mycar = car + model;
  print("MY car is $mycar");
}
