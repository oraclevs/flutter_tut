void main() {
  // • Session 3: Control flow: if, else, switch, loops

  // if syntax  --- if (){} -----

  // if (true) {
  //   print('object');
  // }

  bool isActive = false;
  bool haspaid = true;

  if (isActive) {
    print('is active');
  }

  if (isActive == true) {
    print('is active');
  }
  //  AND
  if (haspaid && isActive) {
    print('is good to go');
  }
  //   OR
  if (haspaid || isActive) {
    print('is good to go');
  }
  // NOT
  if (!haspaid) {
    print('is good to go');
  }

  //  if else
  if (isActive) {
    print('is active');
  } else {
    print('is not active');
  }

  // if else if
  if (haspaid) {
    print('has paid');
  } else if (isActive && isActive) {
    print('has paid and is active');
  } else {
    print('i dont know about him');
  }

  //  switch case

  String char = "B";

  switch (char) {
    case "B":
      print("char is $char");
      break;
    case "A":
      print('char is A');
      break;
    default:
      print("Unknown");
  }

  int len = 6;
  //  loops
  // for loop
  for (int i = 0; i < len; i++) {
    print('$i');
  }

  //  while loop
  while (len < 10) {
    len++;
    print(len);
  }
  bool keepRunning = true;
  //  break loop
  while (keepRunning) {
    print(keepRunning);
    break;
  }
  //  break and continue in loops
  while (true) {
    len++;
    if (len < 6) {
      continue;
    } else {
      break;
    }
  }
  do {
    print('len $len');
  } while (len==6);
}


