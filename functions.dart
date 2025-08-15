// Week 2 – Functions and Collections
// • Session 4: Functions, parameters, arrow syntax
// • Session 5: Lists, Sets, Maps, basic operations
// • Session 6: Practical exercises: build a simple CLI To-Do app

void main() {
  print(sum(2, 2));
  print(minus());
  print(minus(1, 4));
  print(added(3, 3));
  print(added(4, 4, 4));
  //  named params
  print(canAdd(b: 2, a: 3));
  print(canMinus());
  print(canMinus(a: 1, b: 8));
  print(canMinusThree(a: 4, b: 2));
  print(canMinusThree(a: 4, b: 2, c: 1));
  // void function
  i_return_nothing();
  // application of arrow syntax
  print(List.generate(4,
    (index) => 4 // arrow syntax
    ));
}

//  function that return int
int add() {
  return 0;
}

// functions with parameters unname

int sum(int a, int b) {
  return a + b;
}

// functions with optional params
double minus([double a = 1, double b = 1]) {
  return a - b;
}

// mixing optional un named with required unnamed

int added(int a, int b, [int c = 0]) {
  return a + b + c;
}

//  named parameters
int canAdd({required int a, required int b}) {
  return a + b;
}

//  named optional
int canMinus({int a = 1, int b = 1}) {
  return a - b;
}

// mixed optional and required named params
double canMinusThree({required double a, required double b, double c = 0}) {
  return a - b - c;
}

// function that return nothing
void i_return_nothing() {
  print('i return nothing');
}

//arrow syntax
//()=>value
