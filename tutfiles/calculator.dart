class Calculator {
  double a;
  double b;
  Calculator({required this.a, required this.b});

  double add({double x = 0, double y = 0}) {
    if (x == 0 && y == 0) {
      return this.a + this.b;
    } else {
      return y + x;
    }
  }

  double subtract({double x = 0, double y = 0}) {
    if (x == 0 && y == 0) {
      return this.a - this.b;
    } else {
      return y - x;
    }
  }

  double divide({double x = 0, double y = 0}) {
    if (x == 0 && y == 0) {
      return this.a / this.b;
    } else {
      return y / x;
    }
  }

  double multiply({double x = 0, double y = 0}) {
    if (x == 0 && y == 0) {
      return this.a * this.b;
    } else {
      return y * x;
    }
  }

  double remainder({double x = 0, double y = 0}) {
    if (x == 0 && y == 0) {
      return this.a % this.b;
    } else {
      return y % x;
    }
  }
}

void main(List arguments) {
  List commands = ['add', 'subtract', 'divide', 'multiply', 'remainder'];

  //  check if at least 3 arguments are provided
  if (arguments.length < 3) {
    print('Please provide at least 3 arguments');
    return;
  }
  String command = arguments.first;
  double a = double.parse(arguments[1]);
  double b = double.parse(arguments[2]);
  Calculator calculator = Calculator(a: a, b: b);

  void showResult({required Calculator calculator}) {
    switch (command) {
      case 'add':
        print('The result of this addition is ${calculator.add()}');
        break;
      case 'subtract':
        print('The result of this subtraction is ${calculator.subtract()}');
      case 'divide':
        print('The result of this division is ${calculator.divide()}');
        break;
      case 'multiply':
        print('The result of this multiplication is ${calculator.multiply()}');
        break;
      case 'remainder':
        print('The result of this remainder is ${calculator.remainder()}');
        break;
      default:
        print('Invalid command');
    }
  }

  if (!commands.contains(command)) {
    print(
      'Invalid command. Please provide one of the following commands: $commands',
    );
    return;
  }

  showResult(calculator: calculator);
}
