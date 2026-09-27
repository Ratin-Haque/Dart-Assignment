//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415



//Assignment -1
//practise q/a -1
--> 1
void main() {
  print("Ahsanul Huda");
}


//2. Print Hello I am "John Doe" and Hello I'am "John Doe"
void main() {
  print('Hello I am "John Doe"');
  print("Hello I'am \"John Doe\"");
}


//3. Declare a constant int with value 7
void main() {
  const int number = 7;
  print(number);
}

//Calculate Simple Interest
//Formula: (p * t * r) / 100

import 'dart:io';

void main() {
  print("Enter principal amount:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter time:");
  double t = double.parse(stdin.readLineSync()!);

  print("Enter rate:");
  double r = double.parse(stdin.readLineSync()!);

  double interest = (p * t * r) / 100;

  print("Simple Interest = $interest");
}


//5. Print square of a number using user input

import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  int square = number * number;

  print("Square = $square");
}

//6. Print full name from first name and last name

import 'dart:io';

void main() {
  print("Enter first name:");
  String firstName = stdin.readLineSync()!;

  print("Enter last name:");
  String lastName = stdin.readLineSync()!;

  String fullName = "$firstName $lastName";

  print("Full Name = $fullName");
}

//7. Find quotient and remainder of two integers

import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  int quotient = a ~/ b;
  int remainder = a % b;

  print("Quotient = $quotient");
  print("Remainder = $remainder");
}

//8. Swap two numbers

import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  int temp = a;
  a = b;
  b = temp;

  print("After swapping:");
  print("First number = $a");
  print("Second number = $b");
}


//9. Remove all whitespaces from a String

void main() {
  String text = "Hello World Dart";

  String result = text.replaceAll(' ', '');

  print(result);
}

//10. Convert String to int

void main() {
  String number = "25";

  int result = int.parse(number);

  print(result);
}

//11. Split restaurant bill among people
//Formula: total bill / number of people

import 'dart:io';

void main() {
  print("Enter total bill amount:");
  double bill = double.parse(stdin.readLineSync()!);

  print("Enter number of people:");
  int people = int.parse(stdin.readLineSync()!);

  double splitAmount = bill / people;

  print("Each person has to pay = $splitAmount");
}


/*12. Calculate time taken to reach office

Given:
Distance = 25 km
Speed = 40 km/hour
Formula: time = distance / speed
Convert hours to minutes by multiplying by 60*/

void main() {
  double distance = 25;
  double speed = 40;

  double time = distance / speed;
  double minutes = time * 60;

  print("Time taken = $minutes minutes");
}

