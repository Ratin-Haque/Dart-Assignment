
//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415


//1. Create a list of names and print all names

void main() {
  List<String> names = ["John", "David", "Alex", "Michael"];

  for (String name in names) {
    print(name);
  }
}


//2. Create a set of fruits and print all fruits using a loop


void main() {
  Set<String> fruits = {"Apple", "Mango", "Banana", "Orange"};

  for (String fruit in fruits) {
    print(fruit);
  }
}



//3. Read a list of expenses using user input and print the total


import 'dart:io';

void main() {
  print("Enter number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  List<double> expenses = [];

  for (int i = 0; i < n; i++) {
    print("Enter expense ${i + 1}:");
    double expense = double.parse(stdin.readLineSync()!);

    expenses.add(expense);
  }

  double total = 0;

  for (double expense in expenses) {
    total = total + expense;
  }

  print("Total expenses = $total");
}




//4. Create an empty list of String called days

Use add() to add the 7 days.

void main() {
  List<String> days = [];

  days.add("Saturday");
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");

  for (String day in days) {
    print(day);
  }
}




//5. Add 7 friends and find names starting with A
//Here using the where() method.

void main() {
  List<String> friends = [
    "Ahsan",
    "John",
    "Alex",
    "Rahim",
    "David",
    "Arif",
    "Karim"
  ];

  var result = friends.where((name) => name.startsWith("A"));

  print("Names starting with A:");

  for (String name in result) {
    print(name);
  }
}



//6. Create a map with name, address, age and country
//Updating the country and printing all keys and values.

void main() {
  Map<String, dynamic> person = {
    "name": "John",
    "address": "Dhaka",
    "age": 25,
    "country": "Bangladesh"
  };

  person["country"] = "Canada";

  for (var key in person.keys) {
    print("$key : ${person[key]}");
  }
}




//7. Map with name and phone, find keys with length 4


void main() {
  Map<String, String> person = {
    "name": "John",
    "phone": "123456789",
    "city": "Dhaka",
    "email": "john@gmail.com"
  };

  var result = person.keys.where((key) => key.length == 4);

  print("Keys with length 4:");

  for (String key in result) {
    print(key);
  }
}




//8. Simple To-Do Application
//This allows the user to add, remove, and view tasks.

import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n--- To-Do List ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter your task:");
      String task = stdin.readLineSync()!;

      tasks.add(task);

      print("Task added successfully.");
    } 
    
    else if (choice == 2) {
      print("Enter task number to remove:");

      int number = int.parse(stdin.readLineSync()!);

      if (number >= 1 && number <= tasks.length) {
        tasks.removeAt(number - 1);
        print("Task removed successfully.");
      } else {
        print("Invalid task number.");
      }
    } 
    
    else if (choice == 3) {
      if (tasks.isEmpty) {
        print("No tasks available.");
      } else {
        print("Your Tasks:");

        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } 
    
    else if (choice == 4) {
      print("Goodbye!");
      break;
    } 
    
    else {
      print("Invalid choice.");
    }
  }
}