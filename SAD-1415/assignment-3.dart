//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415

//1. Print your own name using a function

void printName() {
  print("Ahsanul Huda");
}

void main() {
  printName();
}


//2. Print even numbers between intervals using a function


void printEvenNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  printEvenNumbers(1, 20);
}



//3. Create a greet function
void greet(String name) {
  print("Hello, $name");
}

void main() {
  greet("John");
}



//4. Generate a random password


import 'dart:math';

void main() {
  String characters =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

  Random random = Random();
  String password = "";

  for (int i = 0; i < 8; i++) {
    password += characters[random.nextInt(characters.length)];
  }

  print("Random Password: $password");
}


//5. Find area of a circle using a function

//Formula: π × r × r

import 'dart:math';

double circleArea(double r) {
  return pi * r * r;
}

void main() {
  double radius = 5;

  double area = circleArea(radius);

  print("Area of circle = $area");
}



//6. Reverse a String using a function


String reverseString(String text) {
  return text.split('').reversed.join('');
}

void main() {
  String name = "John";

  print(reverseString(name));
}


//7. Calculate power of a number

import 'dart:math';

double power(double number, int exponent) {
  return pow(number, exponent).toDouble();
}

void main() {
  print(power(5, 3));
}



//8. Function add that returns the sum

int add(int a, int b) {
  return a + b;
}

void main() {
  int result = add(10, 20);

  print("Sum = $result");
}


//9. Function maxNumber that returns the largest of three numbers

int maxNumber(int a, int b, int c) {
  if (a >= b && a >= c) {
    return a;
  } else if (b >= a && b >= c) {
    return b;
  } else {
    return c;
  }
}

void main() {
  print(maxNumber(10, 25, 15));
}


//10. Function isEven
//Returns true if the number is even and false otherwise.

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print(isEven(10));
  print(isEven(7));
}



//12. Function calculateArea with default values
//Formula: length × width

double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  print(calculateArea(length: 10, width: 5));
}



