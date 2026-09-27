
//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415


//1. Class Laptop with 3 objects


class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void display() {
    print("ID: $id");
    print("Name: $name");
    print("RAM: $ram GB");
    print("");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell", 8);
  Laptop laptop2 = Laptop(2, "HP", 16);
  Laptop laptop3 = Laptop(3, "Lenovo", 12);

  laptop1.display();
  laptop2.display();
  laptop3.display();
}




//2. Class House with constructor and list


class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> houses = [];

  houses.add(House(1, "House A", 5000000));
  houses.add(House(2, "House B", 7000000));
  houses.add(House(3, "House C", 9000000));

  for (House house in houses) {
    print("ID: ${house.id}");
    print("Name: ${house.name}");
    print("Price: ${house.price}");
    print("");
  }
}



//3. Enum class for gender

enum Gender {
  male,
  female,
  others
}

void main() {
  for (Gender gender in Gender.values) {
    print(gender);
  }
}



//4. Animal and Cat using inheritance


class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound)
      : super(id, name, color);
}

void main() {
  Cat cat = Cat(1, "Tom", "White", "Meow");

  print("ID: ${cat.id}");
  print("Name: ${cat.name}");
  print("Color: ${cat.color}");
  print("Sound: ${cat.sound}");
}



//5. Camera with private properties, getter and setter
// a property becomes private when its name starts with _.

class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  set id(int value) => _id = value;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get color => _color;
  set color(String value) => _color = value;

  double get price => _price;
  set price(double value) => _price = value;

  void display() {
    print("ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: $_price");
    print("");
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Black", 50000);
  Camera camera2 = Camera(2, "Nikon", "Red", 60000);
  Camera camera3 = Camera(3, "Sony", "Black", 70000);

  camera1.display();
  camera2.display();
  camera3.display();
}





//6. Interface Bottle, CokeBottle and factory constructor

abstract class Bottle {
  void open();

  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }
}

void main() {
  Bottle bottle = Bottle();

  bottle.open();
}






//7. Simple OOP Quiz Application


import 'dart:io';

class Question {
  String question;
  List<String> options;
  int answer;

  Question(this.question, this.options, this.answer);

  void display() {
    print(question);

    for (int i = 0; i < options.length; i++) {
      print("${i + 1}. ${options[i]}");
    }
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (Question question in questions) {
      question.display();

      print("Enter your answer:");
      int answer = int.parse(stdin.readLineSync()!);

      if (answer == question.answer) {
        print("Correct!");
        score++;
      } else {
        print("Wrong!");
      }

      print("");
    }

    print("Quiz finished!");
    print("Your score: $score/${questions.length}");
  }
}

void main() {
  List<Question> questions = [
    Question(
      "What is the capital of Bangladesh?",
      ["Dhaka", "Sylhet", "Chittagong", "Rajshahi"],
      1,
    ),

    Question(
      "Which language is used by Dart?",
      ["Java", "Dart", "Python", "C++"],
      2,
    ),

    Question(
      "How many days are there in a week?",
      ["5", "6", "7", "8"],
      3,
    ),
  ];

  Quiz quiz = Quiz(questions);

  print("===== QUIZ APPLICATION =====");
  quiz.start();
}

