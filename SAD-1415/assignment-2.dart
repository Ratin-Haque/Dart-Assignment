
//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415


//1. Check whether a number is odd or even


import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}


//2. Check whether a character is a vowel or consonant

import 'dart:io';

void main() {
  print("Enter a character:");
  String ch = stdin.readLineSync()!;

  if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ||
      ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
    print("Vowel");
  } else {
    print("Consonant");
  }
}


//3. Check whether a number is positive, negative, or zero

import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}



//4. Print your name 100 times

void main() {
  for (int i = 1; i <= 100; i++) {
    print("Ahsanul Huda");
  }
}


//5. Calculate the sum of natural numbers

import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = 1; i <= n; i++) {
    sum = sum + i;
  }

  print("Sum = $sum");
}



//6. Generate multiplication table of 5
void main() {
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }
}


//7. Generate multiplication tables of 1–9


void main() {
  for (int i = 1; i <= 9; i++) {
    print("Table of $i");

    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }

    print("");
  }
}


//8. Simple calculator

import 'dart:io';

void main() {
  print("Enter first number:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double b = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String op = stdin.readLineSync()!;

  if (op == '+') {
    print("Result = ${a + b}");
  } else if (op == '-') {
    print("Result = ${a - b}");
  } else if (op == '*') {
    print("Result = ${a * b}");
  } else if (op == '/') {
    print("Result = ${a / b}");
  } else {
    print("Invalid operator");
  }
}



//9. Print 1 to 100 but not 41
//Here using continue to skip 41.

void main() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    }

    print(i);
  }
}